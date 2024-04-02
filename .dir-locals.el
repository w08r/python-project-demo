((nil . ((eval . (dap-register-debug-template
                  "Run the web server"
                  (list :type "python"
                        :args '("--port"
                                "9090"
                                )
                        :cwd "${workspaceFolder}"
                        :program "main:app"
                        :module "uvicorn"
                        :request "launch"
                        :name "Run the web server"))))))
