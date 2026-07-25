
package org.openapitools.client.model


case class GetAccountLocales200ResponseValue (
    /* English display name of the locale. */
    _name: Option[String],
    /* Display name of the locale in its own language. */
    _local_name: Option[String]
)
object GetAccountLocales200ResponseValue {
    def toStringBody(var_name: Object, var_local_name: Object) =
        s"""
        | {
        | "name":$var_name,"local_name":$var_local_name
        | }
        """.stripMargin
}
