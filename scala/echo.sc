#!/usr/bin/env scala

import scala.sys

object Echo extends App {
  val argc = sys.env("COG_ARGC").toInt
  val argv = (0 to argc - 1).map(i => sys.env(s"COG_ARGV_$i"))
  println(argv.mkString(" "))
}
