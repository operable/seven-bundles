(def argc
  (System/getenv "COG_ARGC"))

(defn argv [n]
  (System/getenv (str "COG_ARGV_" n)))

(def args
  (map argv (range (Integer/parseInt argc))))

(println (clojure.string/join " " args))
