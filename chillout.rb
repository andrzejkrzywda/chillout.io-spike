module Chillout
  class Brain
    def initialize
      @projects = {}
    end
    def add_project(project_name)
      @projects[project_name] = Project.new
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

  class Exception
    def initialize(message, stacktrace)
      @message = message
      @stacktrace = stacktrace
    end
  end
end