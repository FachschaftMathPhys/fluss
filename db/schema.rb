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

ActiveRecord::Schema.define(version: 20180724213248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.text "iban"
    t.text "bic"
    t.text "recipient"
    t.bigint "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "idx_29011_index_accounts_on_user_id"
  end

  create_table "associated_withs", force: :cascade do |t|
    t.text "expense_type"
    t.bigint "expense_id"
    t.bigint "offer_comparison_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["expense_type", "expense_id"], name: "idx_29101_index_associated_withs_on_expense_type_and_expense_id"
    t.index ["offer_comparison_id"], name: "idx_29101_index_associated_withs_on_offer_comparison_id"
  end

  create_table "bodies", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgetary_groups", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgetary_positions", force: :cascade do |t|
    t.decimal "classification_number"
    t.decimal "amount"
    t.text "title"
    t.text "description"
    t.text "examples"
    t.bigint "budgetary_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["budgetary_group_id"], name: "idx_29065_index_budgetary_positions_on_budgetary_group_id"
  end

  create_table "completions", force: :cascade do |t|
    t.text "success"
    t.text "failure"
  end

  create_table "contains", force: :cascade do |t|
    t.bigint "form_id"
    t.bigint "form_element_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["form_element_id"], name: "idx_28921_index_contains_on_form_element_id"
    t.index ["form_id"], name: "idx_28921_index_contains_on_form_id"
  end

  create_table "decisions", force: :cascade do |t|
    t.text "explanation"
    t.text "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disbursal_requests", id: :bigint, default: nil, force: :cascade do |t|
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
    t.bigint "attendee_count"
    t.text "protocol_link"
    t.bigint "protocol_page"
    t.binary "pdf"
    t.decimal "deposit"
    t.boolean "discount_card"
    t.bigint "body_id"
    t.bigint "user_id"
    t.bigint "budgetary_position_id"
    t.bigint "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "drstep_type"
    t.bigint "drstep_id"
    t.index ["account_id"], name: "idx_29108_index_disbursal_requests_on_account_id"
    t.index ["body_id"], name: "idx_29108_index_disbursal_requests_on_body_id"
    t.index ["budgetary_position_id"], name: "idx_29108_index_disbursal_requests_on_budgetary_position_id"
    t.index ["drstep_type", "drstep_id"], name: "idx_29108_index_disbursal_requests_on_drstep_type_and_drstep_id"
    t.index ["user_id"], name: "idx_29108_index_disbursal_requests_on_user_id"
  end

  create_table "drink_positions", force: :cascade do |t|
    t.float "percentage"
    t.bigint "quantity"
    t.float "volume"
    t.text "name"
    t.bigint "disbursal_request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["disbursal_request_id"], name: "idx_29038_index_drink_positions_on_disbursal_request_id"
  end

  create_table "financing_applications", force: :cascade do |t|
    t.date "session_date"
    t.decimal "figure"
    t.text "applicant"
    t.text "description"
    t.text "justification"
    t.text "miscellenea"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "fastep_type"
    t.bigint "fastep_id"
    t.bigint "user_id"
    t.index ["fastep_type", "fastep_id"], name: "idx_28993_index_financing_applications_on_fastep_type_and_faste"
    t.index ["user_id"], name: "index_financing_applications_on_user_id"
  end

  create_table "form_elements", force: :cascade do |t|
    t.text "typ"
    t.text "label"
    t.text "data_field"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forms", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fs_resolutions", id: :bigint, default: nil, force: :cascade do |t|
    t.bigint "budgetary_position_id"
    t.decimal "figure"
    t.text "description"
    t.text "justification"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "fsstep_type"
    t.bigint "fsstep_id"
    t.bigint "user_id"
    t.index ["budgetary_position_id"], name: "idx_29114_index_fs_resolutions_on_budgetary_position_id"
    t.index ["fsstep_type", "fsstep_id"], name: "idx_29114_index_fs_resolutions_on_fsstep_type_and_fsstep_id"
    t.index ["user_id"], name: "index_fs_resolutions_on_user_id"
  end

  create_table "initmodels", force: :cascade do |t|
    t.text "model"
    t.text "initfollowup_type"
    t.bigint "initfollowup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["initfollowup_type", "initfollowup_id"], name: "idx_29083_index_initmodels_on_initfollowup_type_and_initfollowu"
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
    t.bigint "budgetary_position_id"
    t.bigint "body_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "idstep_type"
    t.bigint "idstep_id"
    t.bigint "user_id"
    t.index ["body_id"], name: "idx_29002_index_inpayment_declarations_on_body_id"
    t.index ["budgetary_position_id"], name: "idx_29002_index_inpayment_declarations_on_budgetary_position_id"
    t.index ["idstep_type", "idstep_id"], name: "idx_29002_index_inpayment_declarations_on_idstep_type_and_idste"
    t.index ["user_id"], name: "index_inpayment_declarations_on_user_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.text "name"
    t.bigint "quantity"
    t.date "purchase_date"
    t.decimal "price"
    t.text "storage_location"
    t.bigint "user_id"
    t.date "lent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "idx_28984_index_inventory_items_on_user_id"
  end

  create_table "offer_comparisons", force: :cascade do |t|
    t.decimal "price1"
    t.decimal "price2"
    t.decimal "price3"
    t.text "product_description1"
    t.text "product_description2"
    t.text "product_description3"
    t.text "offeror1"
    t.text "offeror2"
    t.text "offeror3"
    t.text "link1"
    t.text "link2"
    t.text "link3"
    t.text "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "ocstep_type"
    t.bigint "ocstep_id"
    t.bigint "user_id"
    t.index ["ocstep_type", "ocstep_id"], name: "idx_29047_index_offer_comparisons_on_ocstep_type_and_ocstep_id"
    t.index ["user_id"], name: "index_offer_comparisons_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "decision_id"
    t.bigint "option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["decision_id"], name: "idx_28960_index_offers_on_decision_id"
    t.index ["option_id"], name: "idx_28960_index_offers_on_option_id"
  end

  create_table "options", force: :cascade do |t|
    t.text "optionfollowup_type"
    t.bigint "optionfollowup_id"
    t.text "label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["optionfollowup_type", "optionfollowup_id"], name: "idx_28966_index_options_on_optionfollowup_type_and_optionfollow"
  end

  create_table "selections", force: :cascade do |t|
    t.text "explanation"
    t.text "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "selfollowup_type"
    t.bigint "selfollowup_id"
    t.index ["selfollowup_type", "selfollowup_id"], name: "idx_28951_index_selections_on_selfollowup_type_and_selfollowup_"
  end

  create_table "starts", force: :cascade do |t|
    t.text "first_type"
    t.bigint "first_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["first_type", "first_id"], name: "idx_29074_index_starts_on_first_type_and_first_id"
  end

  create_table "theoretikum_billings", id: :bigint, default: nil, force: :cascade do |t|
    t.date "submission_date"
    t.date "resolution_date"
    t.datetime "review_date"
    t.datetime "approval_date"
    t.datetime "mailing_date"
    t.boolean "print_costs"
    t.boolean "locker_rent"
    t.text "miscellenea"
    t.boolean "postage"
    t.bigint "body_id"
    t.decimal "figure"
    t.binary "pdf"
    t.date "event_date"
    t.text "protocol_link"
    t.bigint "protocol_page"
    t.bigint "budgetary_position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "tbstep_type"
    t.bigint "tbstep_id"
    t.bigint "user_id"
    t.index ["body_id"], name: "idx_29120_index_theoretikum_billings_on_body_id"
    t.index ["budgetary_position_id"], name: "idx_29120_index_theoretikum_billings_on_budgetary_position_id"
    t.index ["tbstep_type", "tbstep_id"], name: "idx_29120_index_theoretikum_billings_on_tbstep_type_and_tbstep_"
    t.index ["user_id"], name: "index_theoretikum_billings_on_user_id"
  end

  create_table "throughs", force: :cascade do |t|
    t.bigint "selection_id"
    t.bigint "form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["form_id"], name: "idx_28945_index_throughs_on_form_id"
    t.index ["selection_id"], name: "idx_28945_index_throughs_on_selection_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "accounts", "users", name: "accounts_user_id_fkey"
  add_foreign_key "associated_withs", "offer_comparisons", name: "associated_withs_offer_comparison_id_fkey"
  add_foreign_key "budgetary_positions", "budgetary_groups", name: "budgetary_positions_budgetary_group_id_fkey"
  add_foreign_key "contains", "form_elements", name: "contains_form_element_id_fkey"
  add_foreign_key "contains", "forms", name: "contains_form_id_fkey"
  add_foreign_key "drink_positions", "disbursal_requests", name: "drink_positions_disbursal_request_id_fkey"
  add_foreign_key "financing_applications", "users"
  add_foreign_key "fs_resolutions", "users"
  add_foreign_key "inpayment_declarations", "bodies", name: "inpayment_declarations_body_id_fkey"
  add_foreign_key "inpayment_declarations", "budgetary_positions", name: "inpayment_declarations_budgetary_position_id_fkey"
  add_foreign_key "inpayment_declarations", "users"
  add_foreign_key "inventory_items", "users", name: "inventory_items_user_id_fkey"
  add_foreign_key "offer_comparisons", "users"
  add_foreign_key "offers", "decisions", name: "offers_decision_id_fkey"
  add_foreign_key "offers", "options", name: "offers_option_id_fkey"
  add_foreign_key "theoretikum_billings", "users"
  add_foreign_key "throughs", "forms", name: "throughs_form_id_fkey"
  add_foreign_key "throughs", "selections", name: "throughs_selection_id_fkey"
end
