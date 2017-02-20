module Semaphore
  def self.execute(command)
    log("Running command: #{command}")
    system(command)
    log("Command finished, exit status : #{$?.exitstatus}")

    exit($?.exitstatus)
  end
end