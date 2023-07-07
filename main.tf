
resource "google_project_service" "firestore" {
  project = var.project_id
  service = "firestore.googleapis.com"

}

resource "google_firestore_database" "database" {
  project                     = var.project_id
  name                        = var.firestoredb_name #"default-2"
  location_id                 = var.firestoredb_location_id #"asia-south1"
  type                        = var.firestoredb_type #"FIRESTORE_NATIVE"
  concurrency_mode            = var.firestoredb_concurrency_mode #"OPTIMISTIC"
  app_engine_integration_mode = var.firestoredb_app_engine_integration_mode #"DISABLED"

  depends_on = [google_project_service.firestore]
}

################ alertData #############
resource "google_firestore_document" "doc-1" {
  project     = var.project_id
  collection  = var.collection_1
  document_id = var.collection_1_document_1
  fields      = var.field
}
resource "google_firestore_document" "doc-2" {
  project     = var.project_id
  collection  = var.collection_1
  document_id = var.collection_1_document_2
  fields      = var.field
}

################ mail ############
resource "google_firestore_document" "doc-3" {
  project     = var.project_id
  collection  = var.collection_2
  document_id = var.collection_2_document_1
  fields      = var.field
}
resource "google_firestore_document" "doc-4" {
  project     = var.project_id
  collection  = var.collection_2
  document_id = var.collection_2_document_2
  fields      = var.field
}
resource "google_firestore_document" "doc-5" {
  project     = var.project_id
  collection  = var.collection_2
  document_id = var.collection_2_document_3
  fields      = var.field
}

################ templateCollection ##############
resource "google_firestore_document" "doc-6" {
  project     = var.project_id
  collection  = var.collection_3
  document_id = var.collection_3_document_1
  fields      = var.field
}
resource "google_firestore_document" "doc-7" {
  project     = var.project_id
  collection  = var.collection_3
  document_id = var.collection_3_document_2
  fields      = var.field
}
resource "google_firestore_document" "doc-8" {
  project     = var.project_id
  collection  = var.collection_3
  document_id = var.collection_3_document_3
  fields      = var.field
}
resource "google_firestore_document" "doc-9" {
  project     = var.project_id
  collection  = var.collection_3
  document_id = var.collection_3_document_4
  fields      = var.field
}
resource "google_firestore_document" "doc-10" {
  project     = var.project_id
  collection  = var.collection_3
  document_id = var.collection_3_document_5
  fields      = var.field
}
resource "google_firestore_document" "doc-11" {
  project     = var.project_id
  collection  = var.collection_3
  document_id = var.collection_3_document_6
  fields      = var.field
}

################### userData ###############
resource "google_firestore_document" "doc-12" {
  project     = var.project_id
  collection  = var.collection_4
  document_id = var.collection_4_document_1
  fields      = var.field
}
