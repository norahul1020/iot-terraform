variable "project_id" {
  type    = string
  default = "static-site-378516"
}
############# firestore variables ################

variable "firestoredb_name" {
  type    = string
  default = "default"
}
variable "firestoredb_location_id" {
  type    = string
  default = "asia-south1"
}
variable "firestoredb_type" {
  type    = string
  default = "FIRESTORE_NATIVE"
}
variable "firestoredb_concurrency_mode" {
  type    = string
  default = "OPTIMISTIC"
}
variable "firestoredb_app_engine_integration_mode" {
  type    = string
  default = "DISABLED"
}
variable "field" {
  type    = string
}
variable "collection_1" {
  type    = string
}
variable "collection_2" {
  type    = string
}
variable "collection_3" {
  type    = string
}
variable "collection_4" {
  type    = string
}
variable "collection_1_document_1" {
  type    = string
}
variable "collection_1_document_2" {
  type    = string
}
variable "collection_2_document_1" {
  type    = string
}
variable "collection_2_document_2" {
  type    = string
}
variable "collection_2_document_3" {
  type    = string
}
variable "collection_3_document_1" {
  type    = string
}
variable "collection_3_document_2" {
  type    = string
}
variable "collection_3_document_3" {
  type    = string
}
variable "collection_3_document_4" {
  type    = string
}
variable "collection_3_document_5" {
  type    = string
}
variable "collection_3_document_6" {
  type    = string
}
variable "collection_4_document_1" {
  type    = string
  default = " "
}
/*
variable "template_field_1" {
  type    = string
}
variable "template_field_2" {
  type    = string
}
variable "template_field_3" {
  type    = string
}
variable "template_field_4" {
  type    = string
}
variable "template_field_5" {
  type    = string
}
variable "template_field_6" {
  type    = string
}
*/
