/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  type = string
}

variable "showconsumerinsights" {
  type = bool
  default = true
}

variable "datastore_uris" {
  type    = list(string)
  default = ["cloud.google.com/*"]
}


variable "gdrive_folder_name" {
  default     = "genai-marketing-assets"
  type        = string
  description = "Name of the folder to create in Google Drive"
}

variable "location" {
  default     = "US"
  type        = string
  description = "Location of the resources"
}

variable "genai_location" {
  default     = "global"
  type        = string
  description = "Location of the resources"
}

variable "region" {
  default     = "us-central1"
  type        = string
  description = "Location of the resources"
}

variable "dataset_name" {
  type        = string
  default     = "genai_marketing"
  description = "BigQuery dataset name"
}

variable "dataset_tables_min_records" {
  type        = number
  default     = 5000
  description = "Minimum records to generate when loading data into BQ tables"
}

variable "tag_template_id" {
  type    = string
  default = "llmcdptemplate"
}

variable "search_app_name" {
  type        = string
  default     = "genai_marketing"
  description = "Vertex Search app name"
}

variable "chat_bot_name" {
  type        = string
  default     = "genai_marketing"
  description = "Vertex Conversation app name"
}

variable "genai_marketing_service_account" {
  type        = string
  default     = "genai-marketing-sa"
  description = "Service account name"

}

variable "company_name" {
  type        = string
  default     = "Google"
  description = "Company name"
}
variable "domain" {
  type        = string
  default     = "google.com"
  description = "Your company domain"

}

variable "datastore_storage_folder" {
  type    = string
  default = "gs://cloud-samples-data/gen-app-builder/search/alphabet-investor-pdfs/*"
}

variable "campaigns_themes" {
  type    = list(string)
  default = [
  "Sales of new women's handbags at Cymbal",
  "Introducing a new line of men's leather shoes",
  "New opening of Cymbal concept shoe store in NYC",
  "Cymbal shoes retail brand in NYC",
  "Another theme"
  ]
}

variable "transaction_types" {
  type    = list(string)
  default = [
    "in-app-purchase",
    "online-purchase",
    "in-store-purchase",
    "recurrent-customer",
    "thirdparty-purchase"
  ]
}

variable "product_names" {
  type    = list(string)
  default = [
    "Coat",
    "misc",
    "Handbag",
    "Headset",
    "Backpack",
    "Flashlight",
    "Hiking Boots",
    "Running Shoes",
  ]
}


variable "prompt_brand_overview" {
  type = string
  default = <<EOF
Cymbal brand information:
1. Brand Name:Cymbal
2. Vision: Elevate every step and statement with our curated ensemble of footwear and handbags.
3. Mission: To seamlessly blend comfort and style, Cymbal aims to provide a harmonious collection of shoes and handbags, resonating with modern elegance and timeless charm.
4. Products:
Shoes: From the bustling city streets to quiet evening outings, our shoes are tailored to fit every scenario with unmatched style and comfort.
Handbags: Crafted for the modern individual, our range spans from spacious totes for daily grind to chic clutches for those nights to remember.
5. Unique Selling Proposition (USP): A symphony of style. At Cymbal, we believe in orchestrating the perfect balance between trendsetting designs and unparalleled quality.
6. Target Audience: Style-savvy individuals aged 20-50 who have an ear for quality and an eye for timeless elegance, seeking the perfect accessories to accompany their ever-evolving lifestyles.
7. Brand Personality: Harmonious, chic, and captivating. Cymbal echoes the rhythm of contemporary fashion with a hint of classic allure.
8. Core Values: Quality First: Every product at Cymbal resonates with a promise of durability and excellence.
Listening to the Beat: We constantly tune into our customer's needs and desires, shaping our collections to mirror the world's evolving fashion pulse.
Echoing Sustainability: Cymbal strikes a chord with the environment, ensuring eco-friendly practices and sustainable choices are at the forefront.
9. Brand Tagline: "Echo Your Elegance."
10. Competitive Landscape: The fashion industry reverberates with many brands, but Cymbal stands distinct with its commitment to harmonizing quality, trend, and sustainability.
11. Future Outlook: Cymbal aspires to expand its resonance in the global market, infusing more sustainable materials into its products, and initiating special editions through designer partnerships, creating exclusive, melodious collections.
Cymbal is not just a brand; it's an experience. Recognizing the rhythm of life and the melodies of fashion, we ensure every piece adds a note of sophistication to our customer's ensemble. Every choice at Cymbal is a step toward a more stylish tomorrow.
EOF
}


variable "text_model_name" {
  type    = string
  default = "gemini-1.5-pro"
}

variable "image_model_name" {
  type    = string
  default = "imagen-3.0-generate-001"
}

variable "code_model_name" {
  type    = string
  default = "gemini-1.5-pro"
}

variable "age_groups" {
  type = list(string)
  default = [
    "18-24",
    "25-34",
    "35-44",
    "45-54",
    "55-64",
    "65+"
  ]
}

variable "genders" {
  type = list(string)
  default = [
    "All",
    "Male",
    "Female"
  ]
}

variable "goals" {
  type = list(string)
  default = [
    "Brand Awareness",
    "Lead Generation",
    "Sales",
    "Customer Loyalty",
    "Product Launch"
  ]
}

variable "competitors" {
  type = list(string)
  default = [
    "Tesla",
    "BMW",
    "Mercedes",
    "Audi",
    "Porsche",
    "Other"
  ]
}
