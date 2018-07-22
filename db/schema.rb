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

ActiveRecord::Schema.define(version: 20180627200158) do

  create_table "accounts", force: :cascade do |t|
    t.string "iban"
    t.string "bic"
    t.string "recipient"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "associated_withs", force: :cascade do |t|
    t.string "expense_type"
    t.integer "expense_id"
    t.integer "offer_comparison_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_type", "expense_id"], name: "index_associated_withs_on_expense_type_and_expense_id"
    t.index ["offer_comparison_id"], name: "index_associated_withs_on_offer_comparison_id"
  end

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budgetary_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budgetary_positions", force: :cascade do |t|
    t.decimal "classification_number"
    t.decimal "amount"
    t.string "title"
    t.text "description"
    t.string "examples"
    t.integer "budgetary_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budgetary_group_id"], name: "index_budgetary_positions_on_budgetary_group_id"
  end

  create_table "completions", force: :cascade do |t|
    t.text "success"
    t.text "failure"
  end

  create_table "contains", force: :cascade do |t|
    t.integer "form_id"
    t.integer "form_element_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_element_id"], name: "index_contains_on_form_element_id"
    t.index ["form_id"], name: "index_contains_on_form_id"
  end

  create_table "decisions", force: :cascade do |t|
    t.text "explanation"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disbursal_requests", force: :cascade do |t|
    t.text "description"
    t.decimal "figure"
    t.date "resolution_date"
    t.datetime "review_date"
    t.datetime "approval_date"
    t.datetime "mailing_date"
    t.datetime "submission_date"
    t.boolean "invoice_settled"
    t.boolean "authorized"
    t.date "event_date"
    t.boolean "food"
    t.integer "attendee_count"
    t.string "protocol_link"
    t.integer "protocol_page"
    t.binary "pdf"
    t.decimal "deposit"
    t.boolean "discount_card"
    t.integer "body_id"
    t.integer "user_id"
    t.integer "budgetary_position_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "drstep_type"
    t.integer "drstep_id"
    t.index ["account_id"], name: "index_disbursal_requests_on_account_id"
    t.index ["body_id"], name: "index_disbursal_requests_on_body_id"
    t.index ["budgetary_position_id"], name: "index_disbursal_requests_on_budgetary_position_id"
    t.index ["drstep_type", "drstep_id"], name: "index_disbursal_requests_on_drstep_type_and_drstep_id"
    t.index ["user_id"], name: "index_disbursal_requests_on_user_id"
  end

  create_table "drink_positions", force: :cascade do |t|
    t.float "percentage"
    t.integer "quantity"
    t.float "volume"
    t.string "name"
    t.integer "disbursal_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disbursal_request_id"], name: "index_drink_positions_on_disbursal_request_id"
  end

  create_table "financing_applications", force: :cascade do |t|
    t.date "session_date"
    t.decimal "figure"
    t.string "applicant"
    t.text "description"
    t.text "justification"
    t.text "miscellenea"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fastep_type"
    t.integer "fastep_id"
    t.index ["fastep_type", "fastep_id"], name: "index_financing_applications_on_fastep_type_and_fastep_id"
  end

  create_table "form_elements", force: :cascade do |t|
    t.string "typ"
    t.string "label"
    t.string "data_field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fs_resolutions", force: :cascade do |t|
    t.integer "budgetary_position_id"
    t.decimal "figure"
    t.text "description"
    t.text "justification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fsstep_type"
    t.integer "fsstep_id"
    t.index ["budgetary_position_id"], name: "index_fs_resolutions_on_budgetary_position_id"
    t.index ["fsstep_type", "fsstep_id"], name: "index_fs_resolutions_on_fsstep_type_and_fsstep_id"
  end

  create_table "initmodels", force: :cascade do |t|
    t.string "model"
    t.string "initfollowup_type"
    t.integer "initfollowup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initfollowup_type", "initfollowup_id"], name: "index_initmodels_on_initfollowup_type_and_initfollowup_id"
  end

  create_table "inpayment_declarations", force: :cascade do |t|
    t.decimal "figure"
    t.date "income_date"
    t.date "event_date"
    t.date "deposit_date"
    t.boolean "deposit_receipt"
    t.date "mailing_date"
    t.boolean "income_testament"
    t.datetime "review_date"
    t.datetime "submission_date"
    t.datetime "approval_date"
    t.binary "pdf"
    t.boolean "authorized"
    t.integer "budgetary_position_id"
    t.integer "body_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "idstep_type"
    t.integer "idstep_id"
    t.index ["body_id"], name: "index_inpayment_declarations_on_body_id"
    t.index ["budgetary_position_id"], name: "index_inpayment_declarations_on_budgetary_position_id"
    t.index ["idstep_type", "idstep_id"], name: "index_inpayment_declarations_on_idstep_type_and_idstep_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.date "purchase_date"
    t.decimal "price"
    t.string "storage_location"
    t.integer "user_id"
    t.date "lent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_inventory_items_on_user_id"
  end

  create_table "offer_comparisons", force: :cascade do |t|
    t.decimal "price1"
    t.decimal "price2"
    t.decimal "price3"
    t.text "product_description1"
    t.text "product_description2"
    t.text "product_description3"
    t.string "offeror1"
    t.string "offeror2"
    t.string "offeror3"
    t.string "link1"
    t.string "link2"
    t.string "link3"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ocstep_type"
    t.integer "ocstep_id"
    t.index ["ocstep_type", "ocstep_id"], name: "index_offer_comparisons_on_ocstep_type_and_ocstep_id"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "decision_id"
    t.integer "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decision_id"], name: "index_offers_on_decision_id"
    t.index ["option_id"], name: "index_offers_on_option_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "optionfollowup_type"
    t.integer "optionfollowup_id"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["optionfollowup_type", "optionfollowup_id"], name: "index_options_on_optionfollowup_type_and_optionfollowup_id"
  end

  create_table "selections", force: :cascade do |t|
    t.text "explanation"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "selfollowup_type"
    t.integer "selfollowup_id"
    t.index ["selfollowup_type", "selfollowup_id"], name: "index_selections_on_selfollowup_type_and_selfollowup_id"
  end

  create_table "starts", force: :cascade do |t|
    t.string "first_type"
    t.integer "first_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_type", "first_id"], name: "index_starts_on_first_type_and_first_id"
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
    t.decimal "figure"
    t.binary "pdf"
    t.date "event_date"
    t.string "protocol_link"
    t.integer "protocol_page"
    t.integer "budgetary_position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tbstep_type"
    t.integer "tbstep_id"
    t.index ["body_id"], name: "index_theoretikum_billings_on_body_id"
    t.index ["budgetary_position_id"], name: "index_theoretikum_billings_on_budgetary_position_id"
    t.index ["tbstep_type", "tbstep_id"], name: "index_theoretikum_billings_on_tbstep_type_and_tbstep_id"
  end

  create_table "throughs", force: :cascade do |t|
    t.integer "selection_id"
    t.integer "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_throughs_on_form_id"
    t.index ["selection_id"], name: "index_throughs_on_selection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
