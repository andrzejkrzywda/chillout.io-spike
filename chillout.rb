module Chillout
  class Brain
    def initialize
      @projects = {}
      @users = {}
    end
    def add_project(project_name, project)
      @projects[project_name] = project

    end

    def add_ownership(user, project)
      @users[user] ||= []
      @users[user] << project
    end

    def projects(user)
      @users[user]
    end
  end

  class Project
    def initialize
      @exceptions = []
    end
    def add_exception(exception)
      @exceptions << exception
    end

    def total_exceptions_count
      @exceptions.length
    end
  end

  class User
  end

  class Exception
    def initialize(message, stacktrace)
      @message = message
      @stacktrace = stacktrace
    end
  end
end