from flask import Flask, jsonify, request
import firebase_admin
from firebase_admin import credentials, firestore
import json
from google.cloud.firestore_v1 import SERVER_TIMESTAMP
from flask_cors import CORS
from datetime import datetime
import smtplib
import ssl
from email.message import EmailMessage








# initialise firebase
cred = credentials.Certificate('finalprojectwt-firebase-adminsdk-qkmrv-164ede3a63.json')
firebase_admin.initialize_app(cred)

db = firestore.client()

# -------------- FIREBASE REFERENCES -----------------
userRef = db.collection('Users')
postRef = db.collection('Posts')




app = Flask(__name__)
CORS(app)

# create user code
# User Details needed:
# id, number, name, email, dob, year group, major, campus residence?, best food, best movie


# -------------- USER API CALLS -----------------

@app.route('/Users', methods=['POST'])
def createUser():
    email = request.json['email']
    user = {
        'userID': request.json['userID'],
        'password': request.json['password'],
        'email': request.json['email'],
        'dateOfBirth': request.json['dateOfBirth'],
        'userName': request.json['userName'],
        'campusResidence': request.json['campusResidence'],
        'yearGroup': request.json['yearGroup'],
        'major': request.json['major'],
        'favFood': request.json['favFood'],
        'favMovie': request.json['favMovie'],
    }
    # check if user exists
    if userRef.document(email).get().exists:
        return jsonify({'message':'User Already exists'}), 404
   


    # if user does not exist create new user
    
        # create user in firestore
    userRef.document(email).set(user)
    return jsonify({'user': 'user created'}), 201

    
        # return jsonify({'message': 'Something went wrong'}), 404,



# Get user details 
@app.route('/Users/<userEmail>', methods=['GET'])
def getUserDetails(userEmail):
    email = str(userEmail)
    # get user account and check whether it exists
    userAccount = userRef.document(email).get()
    if not userAccount.exists:
        return jsonify({'message':'Account does not exist'}), 404
    userInfo = userAccount.to_dict()
    return jsonify(userInfo), 201

# Get all user details 
@app.route('/Users', methods=['GET'])
def getAllUsers():
   
    # get user account and check whether it exists
    userAccount = userRef.get()
    users = [doc.to_dict() for doc in userAccount]
    return jsonify(users), 201



# update user details
@app.route('/Users/<userEmail>', methods=['PUT'])
def updateUserDetails(userEmail):
    email = str(userEmail)
    
    # collect user data
    data = request.json

    if not userRef.document(email).get().exists:
        return jsonify({'User not found'}), 400

    # Update user in firestore 
    userRef.document(email).update(data)
    return jsonify({'Updated Successfully'}), 201




# -------------- POST API CALLS -----------------


@app.route('/Posts', methods=['POST'])
def createPost():
    post = {
    
        'userEmail': request.json['userEmail'],
        'userName': request.json['userName'],
        'message': request.json['message'],
        'newPost': True,
        'timeStamp': SERVER_TIMESTAMP
        
       
    }
   

#  Create new post in firestore
    postRef.document().set(post)
    return jsonify({'user': 'post created'}), 201





# Get all post details 
@app.route('/Posts', methods=['GET'])
def getPostDetails():
    posts = db.collection('Posts').order_by('timeStamp', direction=firestore.Query.DESCENDING).stream()
    results = []
    for post in posts:
        # Convert Firestore DocumentSnapshot to Python dictionary
        data = post.to_dict()
        
        # Convert the timestamp field to a datetime object
        # timestamp = data['timeStamp'].to_datetime()
        data['timeStamp'] = datetime.timestamp(data['timeStamp'])
        # Add document ID to dictionary
        data["PostID"] = post.id
        results.append(data)
    # Return posts as JSON response
    return json.dumps(results)



# Get post details of user
@app.route('/Posts/<userEmail>', methods=['GET'])
def getUserPostDetails(userEmail):
    email = str(userEmail)
    # get user account and check whether it exists
    posts = postRef.where('userEmail', '==', email).get()
    postlist = []
    for doc in posts:
        data= doc.to_dict()
        data['timeStamp'] = datetime.timestamp(data['timeStamp'])
        postlist.append(data)

    return json.dumps(postlist), 201


if __name__ == '__main__':
    app.run()