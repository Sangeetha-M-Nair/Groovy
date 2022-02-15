package home



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional
class UserController {
	
	def UserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }
  def newpass()
  {
  }
    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }
	
	def employeeLogin()
	{}
	def reset(){
		
		log.info("UserController reset action")
		def responseData = new HashMap<>()
		def result
		
		def emailId = params.email
		log.info("email:  "+emailId)
		def user = User.findByEmail(emailId)
		log.info("user data:  "+user)
		
		def useremail = user.email
		log.info(useremail)
		
		if(user){
			session.email = user.email
			flash.message = "Your Email is verified successfully"
			return true
		}else{
		
		flash.message = "Your Email is not Registered"
		redirect(action : "verify")
		}
		
		
	}
	
	def updatePass(){
		
		def email = session.email
		log.info("Email from session : "+email)
		def newPassword = params.newpass
		log.info(newPassword)
		def confirmPassword = params.confirmpass
		log.info(confirmPassword)
		
		if(newPassword != confirmPassword){
			return false
		}else{
			def result = UserService.updatePass(email,newPassword)
			flash.message = "New Password Created Successfully"
		}
	}
	
	def authenticate={
		
		def name = params.name
		def password = params.password
		def user = User.findByNameAndPassword(name,password)
		if(user){
			redirect(action:"userDashboard")
		}else{
			redirect(action:"employeeLogin")
		}
	}

      def verify()
      {
		  
	  }
	  
	  
	  
    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
