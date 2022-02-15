package home

import home.User;

import grails.transaction.Transactional

@Transactional
class UserService {

    def serviceMethod() {

    }
	
	def getInstance() {
		log.info("UserService getInstance ")
		try{
			return new User()
		}
		catch(Exception e) {
			log.info("UserService getInstance Exception::"+e)
		}
	}
	def save(User userInstance) {
		log.info("UserService save-Object ")
		try{
			if(userInstance == null) {
				return false
			}
			else{
				log.info(userInstance)
				def e=userInstance.save(flush:true)
				log.info("*******"+e)
				return e
			}
		}
		catch(Exception e) {
			log.info("UserService save-Object Exception::"+e)
		}
	}
	
	def updatePass(email,password){
		log.info("UserService updatePass service ")
		def resultData=new HashMap<>()
		String []args=["User"]
		try{
		 def userInstance=User.findByEmail(email)
		  if(userInstance){
		   userInstance.password=password
		   log.info(password)
		   def sts2= save(userInstance)
		  }
		 log.info(resultData)
		 return resultData
		}
		catch(Exception e) {
		 log.info("UserService passwordsave3 Exception::"+e)
		}
		
	   }
}
