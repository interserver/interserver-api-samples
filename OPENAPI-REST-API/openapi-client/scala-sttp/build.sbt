version := "1.0.0"
name := "openapi-client"
organization := "org.openapitools"

scalaVersion := "2.13.16"
crossScalaVersions := Seq(scalaVersion.value, "2.12.20")

libraryDependencies ++= Seq(
  "com.softwaremill.sttp.client3" %% "core" % "3.2.0",
  "com.softwaremill.sttp.client3" %% "json4s" % "3.2.0",
  "org.json4s" %% "json4s-jackson" % "3.6.12"
)

scalacOptions := Seq(
  "-unchecked",
  "-deprecation",
  "-feature"
)
