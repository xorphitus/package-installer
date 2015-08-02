{:user {:dependencies [[org.clojure/tools.nrepl "0.2.7"]
                       [slamhound "RELEASE"]
                       [org.clojure/tools.trace "RELEASE"]
                       [criterium "0.4.3"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}
        :plugins [[lein-kibit "RELEASE"]
                  [cider/cider-nrepl "0.10.0-SNAPSHOT"]]}}

