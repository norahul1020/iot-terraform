

resource "google_project_service" "firestore" {
  project = "static-site-378516"
  service = "firestore.googleapis.com"

}

resource "google_firestore_database" "database" {
  project                     = "static-site-378516"
  name                        = "default-3"
  location_id                 = "asia-south1"
  type                        = "FIRESTORE_NATIVE"
  concurrency_mode            = "OPTIMISTIC"
  app_engine_integration_mode = "DISABLED"

  depends_on = [google_project_service.firestore]
}

################ alertData #############
resource "google_firestore_document" "doc-1" {
  project     = "static-site-378516"
  collection  = "alertData"
  document_id = "pressure_3"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"
}
resource "google_firestore_document" "doc-2" {
  project     = "static-site-378516"
  collection  = "alertData"
  document_id = "waterQulity"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}

################ mail ############
resource "google_firestore_document" "doc-3" {
  project     = "static-site-378516"
  collection  = "mail"
  document_id = "email"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-4" {
  project     = "static-site-378516"
  collection  = "mail"
  document_id = "emailToSuperAdmin"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-5" {
  project     = "static-site-378516"
  collection  = "mail"
  document_id = "emailToUser"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}

################ templateCollection ##############
resource "google_firestore_document" "doc-6" {
  project     = "static-site-378516"
  collection  = "templateCollection"
  document_id = "ActivatedTemplate"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-7" {
  project     = "static-site-378516"
  collection  = "templateCollection"
  document_id = "ApproveTemplate"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-8" {
  project     = "static-site-378516"
  collection  = "templateCollection"
  document_id = "DeactivatedTemplate"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-9" {
  project     = "static-site-378516"
  collection  = "templateCollection"
  document_id = "DenyTemplate"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-10" {
  project     = "static-site-378516"
  collection  = "templateCollection"
  document_id = "handlebarsTemplate"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}
resource "google_firestore_document" "doc-11" {
  project     = "static-site-378516"
  collection  = "templateCollection"
  document_id = "superAdminTemp"
  fields      = "{\"something\":{\"mapValue\":{\"fields\":{\"0\":{\"stringValue\":\"pressure\"}}}}}"
}

################### userData ###############
resource "google_firestore_document" "doc-12" {
  project     = "static-site-378516"
  collection  = "userData"
  document_id = ""
  fields      = ""
}