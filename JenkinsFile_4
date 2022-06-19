pipeline {
    agent any
   options {
    skipDefaultCheckout true
  }

  stages{
      stage("CI Code checkout"){
          steps{
              checkout scm
          }
      }

      stage("Sync code"){
          parallel{
              stage("source code sync"){
                  steps{
                      sh 'echo sleep 60'
                      sh 'exit -1'
                  }
              }
              stage("QA code sync"){
                  steps{
                      sh 'echo sleep 60'
                  }
              }
              stage("CI setup "){
                  steps{
                      sh 'echo sleep 120'
                  }
              }
          }
      }
      stage("Debug Builds"){
          parallel{
              stage("Debug build"){
                  steps{
                      sh 'echo sleep 120'
                  }
              }
              stage("Internal build"){
                  steps{
                      sh 'echo sleep 150'
                  }
              }
              stage("2.0 build"){
                  steps{
                      sh 'echo sleep 180'
                  }
              }
          }
      }
     stage("combined post debug n release build"){
        parallel{
            stage("post debug build starts"){
                stages{
                    stage("post debug build"){
                        steps{
                            sh 'echo sleep 30'
                        }
                    }
                    stage("post Internal build"){
                        steps{
                            sh 'echo sleep 30'
                        }
                    }
                    stage("post 2.0 build"){
                        steps{
                            sh 'echo sleep 30'
                        }
                    }
                    stage("copy 2.0 build"){
                        steps{
                            sh 'echo sleep 60'
                        }
                    }
                }    
            }

            stage("Release Build starts"){
                stages{
                    stage("Release Build"){
                        steps{
                            sh 'echo sleep 120'
                        }             
                    }
                    stage("Copy Release Build"){
                        steps{
                            sh 'echo sleep 30'
                        }             
                    }
                    stage("Post Release Build"){
                        steps{
                            sh 'echo sleep 30'
                        }             
                    }
                    stage("docs Build"){
                        steps{
                            sh 'echo sleep 30'
                        }             
                    }
                }
            }
        }
     }
      stage("Tag"){
          stages{
              stage("Tag the code"){
                  steps{
                      sh 'echo sleep 30'
                  }
              }
          }
      }
  }

}