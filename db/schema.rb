# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171014165555) do

  create_table "accounts", force: :cascade do |t|
    t.string "iban"
    t.string "bic"
    t.string "recipient"
  end

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "budgetary_groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "budgetary_positions", force: :cascade do |t|
    t.float "classification_number"
    t.float "amount"
    t.string "title"
    t.text "description"
    t.string "examples"
  end

  create_table "contains", force: :cascade do |t|
    t.integer "form_id"
    t.integer "form_element_id"
    t.index ["form_element_id"], name: "index_contains_on_form_element_id"
    t.index ["form_id"], name: "index_contains_on_form_id"
  end

  create_table "decisions", force: :cascade do |t|
    t.text "explanation"
    t.string "question"
  end

  create_table "disbursal_requests", force: :cascade do |t|
    t.integer "offer_comparison_id"
    t.text "description"
    t.float "figure"
    t.date "resultion_date"
    t.datetime "review_date"
    t.datetime "submission_date"
    t.datetime "approval_date"
    t.datetime "mailing_date"
    t.boolean "invoice_settled"
    t.boolean "authorized"
    t.date "event_date"
    t.boolean "food"
    t.integer "attendee_count"
    t.string "protocol_link"
    t.integer "protocol_page"
    t.binary "pdf"
    t.float "deposit"
    t.boolean "discount_card"
    t.integer "body_id"
    t.integer "user_id"
    t.integer "budgetary_position_id"
    t.integer "account_id"
    t.index ["account_id"], name: "index_disbursal_requests_on_account_id"
    t.index ["body_id"], name: "index_disbursal_requests_on_body_id"
    t.index ["budgetary_position_id"], name: "index_disbursal_requests_on_budgetary_position_id"
    t.index ["offer_comparison_id"], name: "index_disbursal_requests_on_offer_comparison_id"
    t.index ["user_id"], name: "index_disbursal_requests_on_user_id"
  end

  create_table "drink_positions", force: :cascade do |t|
    t.float "percentage"
    t.integer "quantity"
    t.float "volume"
    t.string "name"
  end

  create_table "drinks", force: :cascade do |t|
    t.integer "drink_position_id"
    t.integer "disbursal_request_id"
    t.index ["disbursal_request_id"], name: "index_drinks_on_disbursal_request_id"
    t.index ["drink_position_id"], name: "index_drinks_on_drink_position_id"
  end

  create_table "financing_applications", force: :cascade do |t|
    t.date "session_date"
    t.float "figure"
    t.string "applicant"
    t.text "description"
    t.text "justification"
    t.text "miscellenea"
  end

  create_table "form_elements", force: :cascade do |t|
    t.string "type"
    t.string "label"
    t.string "data_field"
  end

  create_table "forms", force: :cascade do |t|
    t.string "title"
  end

  create_table "fs_resolutions", force: :cascade do |t|
    t.integer "offer_comparison_id"
    t.integer "budgetary_position_id"
    t.float "figure"
    t.text "description"
    t.text "justification"
    t.index ["budgetary_position_id"], name: "index_fs_resolutions_on_budgetary_position_id"
    t.index ["offer_comparison_id"], name: "index_fs_resolutions_on_offer_comparison_id"
  end

  create_table "has", force: :cascade do |t|
    t.integer "user_id"
    t.integer "account_id"
    t.index ["account_id"], name: "index_has_on_account_id"
    t.index ["user_id"], name: "index_has_on_user_id"
  end

  create_table "inpayment_declarations", force: :cascade do |t|
    t.float "figure"
    t.date "income_date"
    t.date "event_date"
    t.date "deposit_date"
    t.boolean "deposit_receipt"
    t.date "mailing_date"
    t.boolean "income_testament"
    t.datetime "review_date"
    t.datetime "submission_date"
    t.datetime "approval_date"
    t.boolean "authorized"
    t.integer "budgetary_position_id"
    t.integer "body_id"
    t.index ["body_id"], name: "index_inpayment_declarations_on_body_id"
    t.index ["budgetary_position_id"], name: "index_inpayment_declarations_on_budgetary_position_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.date "purchase_date"
    t.float "price"
    t.string "storage_location"
    t.integer "user_id"
    t.date "lent_at"
    t.index ["user_id"], name: "index_inventory_items_on_user_id"
  end

  create_table "offer_comparisons", force: :cascade do |t|
    t.float "price1"
    t.float "price2"
    t.float "price3"
    t.text "product_description1"
    t.text "product_description2"
    t.text "production_description3"
    t.string "offeror1"
    t.string "offeror2"
    t.string "offeror3"
    t.string "link1"
    t.string "link2"
    t.string "link3"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "decision_id"
    t.integer "option_id"
    t.index ["decision_id"], name: "index_offers_on_decision_id"
    t.index ["option_id"], name: "index_offers_on_option_id"
  end

  create_table "options", force: :cascade do |t|
    t.integer "forwarding_id"
    t.string "label"
    t.index ["forwarding_id"], name: "index_options_on_forwarding_id"
  end

  create_table "selections", force: :cascade do |t|
    t.text "explanation"
    t.integer "forwarding_id"
    t.index ["forwarding_id"], name: "index_selections_on_forwarding_id"
  end

  create_table "theoretikum_billings", force: :cascade do |t|
    t.date "submission_date"
    t.date "resolution_date"
    t.datetime "review_date"
    t.datetime "approval_date"
    t.datetime "mailing_date"
    t.boolean "print_costs"
    t.boolean "locker_rent"
    t.string "miscellenea"
    t.boolean "postage"
    t.integer "body_id"
    t.integer "offer_comparison_id"
    t.float "figure"
    t.date "event_date"
    t.string "protocol_link"
    t.integer "protocol_page"
    t.integer "budgetary_position_id"
    t.index ["body_id"], name: "index_theoretikum_billings_on_body_id"
    t.index ["budgetary_position_id"], name: "index_theoretikum_billings_on_budgetary_position_id"
    t.index ["offer_comparison_id"], name: "index_theoretikum_billings_on_offer_comparison_id"
  end

  create_table "throughs", force: :cascade do |t|
    t.integer "selection_id"
    t.integer "form_id"
    t.index ["form_id"], name: "index_throughs_on_form_id"
    t.index ["selection_id"], name: "index_throughs_on_selection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
  end

end
