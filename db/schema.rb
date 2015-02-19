# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150218182053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "edbspl"
  enable_extension "plpgsql"
  enable_extension "edb_dblink_libpq"
  enable_extension "edb_dblink_oci"
  enable_extension "pldbgapi"

  create_table "currentsgs", primary_key: "ssn", force: true do |t|
    t.string  "namesort", limit: nil, default: "-"
    t.integer "sort",     limit: 2
    t.integer "gr0",      limit: 2
    t.integer "gbmldw",   limit: 2
  end

  create_table "fadm", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                 null: false
    t.integer "fadm",     limit: 2,                 null: false
    t.string  "name",     limit: nil, default: "-"
    t.string  "nameshot", limit: nil, default: "-"
    t.string  "fiowood",  limit: nil, default: "-"
    t.string  "fiodir",   limit: nil, default: "-"
    t.integer "dept",     limit: 2,   default: 13
    t.integer "radm",     limit: 2,   default: 0
  end

  create_table "fells", primary_key: "woodyear", force: true do |t|
    t.integer "regn",      limit: 2,                                         null: false
    t.integer "fadm",      limit: 2,                           default: 0,   null: false
    t.integer "fell",      limit: 2,                           default: 0,   null: false
    t.string  "use1",      limit: nil,                         default: "-"
    t.string  "name",      limit: nil,                         default: "-"
    t.integer "type1",     limit: 2,                           default: 0
    t.string  "nameshort", limit: nil,                         default: "-"
    t.integer "grnumber",                                      default: 0
    t.integer "youngt",    limit: 2,                           default: 0
    t.decimal "forkcond",              precision: 7, scale: 1
    t.integer "nf08",      limit: 2,                           default: 0
    t.integer "del",       limit: 2,                           default: 0
  end

  add_index "fells", ["woodyear", "regn", "fadm", "name"], name: "fell", unique: true, using: :btree

  create_table "forestry", primary_key: "woodyear", force: true do |t|
    t.integer "regn",      limit: 2,                                           null: false
    t.integer "fadm",                                                          null: false
    t.integer "fory",                                                          null: false
    t.string  "name",      limit: nil,                         default: "-"
    t.integer "year"
    t.integer "last"
    t.decimal "square",                precision: 7, scale: 1
    t.string  "nameshort", limit: nil,                         default: "-"
    t.boolean "checked",                                       default: false
    t.string  "fio",       limit: nil,                         default: "-"
    t.integer "qtykvrt",   limit: 2,                           default: 0
    t.string  "forkcond",  limit: nil,                         default: "-"
  end

  create_table "gosp", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                   null: false
    t.integer "fadm",     limit: 2,   default: 0,     null: false
    t.integer "gosp",     limit: 2,   default: 0,     null: false
    t.string  "type1",    limit: nil, default: "-"
    t.string  "type2",    limit: nil, default: "-"
    t.string  "typeg",    limit: nil, default: "-"
    t.integer "sortname", limit: 2,   default: 0
    t.boolean "check1",               default: false
  end

  create_table "kapl", primary_key: "kapl", force: true do |t|
    t.string  "abbrev",   limit: nil, default: "-"
    t.string  "name",     limit: nil, default: "-"
    t.boolean "check1",               default: false
    t.integer "nbreed",   limit: 2,   default: 0
    t.string  "forkcond", limit: nil, default: "-"
    t.boolean "fruiter",              default: false
    t.integer "kf",                   default: 0
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "namekviv", primary_key: "nkviv", force: true do |t|
    t.string "namekviv",  limit: nil, default: "-"
    t.string "namekviv2", limit: nil, default: "-"
  end

  create_table "ppovadm", primary_key: "woodyear", force: true do |t|
    t.integer "regn",      limit: 2,                 null: false
    t.integer "fadm",      limit: 2,   default: 0,   null: false
    t.integer "admn",                                null: false
    t.integer "ppov",                                null: false
    t.string  "admn_name", limit: nil, default: "-"
    t.string  "ppov_name", limit: nil, default: "-"
    t.integer "sel",       limit: 2,   default: 0
  end

  create_table "pppz", primary_key: "pppz", force: true do |t|
    t.string  "name", limit: nil, default: "-"
    t.integer "type", limit: 2,   default: 0
  end

  create_table "protpart", primary_key: "woodyear", force: true do |t|
    t.integer "regn",   limit: 2,                                     null: false
    t.integer "fadm",   limit: 2,                         default: 0, null: false
    t.integer "fory",   limit: 2,                                     null: false
    t.integer "kvrt",                                                 null: false
    t.integer "kara"
    t.integer "ppov"
    t.integer "pppz",   limit: 2
    t.integer "ppgl",   limit: 2
    t.decimal "square",           precision: 7, scale: 1
    t.integer "rtax",   limit: 2,                         default: 0
    t.integer "nobx",   limit: 2,                         default: 0
    t.integer "qtyvyd", limit: 2,                         default: 0
  end

  create_table "razheight", primary_key: "age", force: true do |t|
    t.integer "nbreed", limit: 2,                           default: 0,   null: false
    t.integer "diam",   limit: 2,                                         null: false
    t.integer "razs",   limit: 2,                           default: 0,   null: false
    t.decimal "min",                precision: 7, scale: 1
    t.decimal "max",                precision: 7, scale: 1
    t.string  "razh",   limit: nil,                         default: "-"
    t.string  "breed",  limit: nil,                         default: "-", null: false
  end

  create_table "regn", primary_key: "regn", force: true do |t|
    t.string "name", limit: nil, default: "-"
  end

  create_table "sortament", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                           default: 0,   null: false
    t.integer "fadm",     limit: 2,                           default: 0,   null: false
    t.integer "ssn",      limit: 2,                           default: 0,   null: false
    t.string  "sortam",   limit: nil,                         default: "-"
    t.string  "grafa",    limit: nil,                         default: "-"
    t.string  "grafa2",   limit: nil,                         default: "-"
    t.integer "d1",       limit: 2,                           default: 0
    t.integer "d2",       limit: 2,                           default: 0
    t.decimal "l1",                   precision: 7, scale: 1
    t.decimal "l2",                   precision: 7, scale: 1
    t.integer "sort",     limit: 2,                           default: 0
    t.integer "gr0",      limit: 2,                           default: 0
    t.string  "qtypatt",  limit: nil,                         default: "-"
    t.integer "gbmldw",   limit: 2,                           default: 0
    t.integer "pine",     limit: 2,                           default: 0
    t.integer "hard",     limit: 2,                           default: 0
    t.integer "mild",     limit: 2,                           default: 0
    t.integer "oak",      limit: 2,                           default: 0
    t.integer "fan",      limit: 2,                           default: 0
    t.string  "namesort", limit: nil,                         default: "-"
  end

  create_table "tbfigure", primary_key: "figure", force: true do |t|
    t.string "name",  limit: nil, default: "-"
    t.string "type2", limit: nil, default: "-"
  end

  create_table "tbkoefyear", primary_key: "woodyear", force: true do |t|
    t.decimal "koef",              precision: 6, scale: 4
    t.string  "koef2", limit: nil,                         default: "0"
  end

  create_table "tblobe", primary_key: "woodyear", force: true do |t|
    t.integer "regn", limit: 2, null: false
    t.integer "fadm", limit: 2, null: false
    t.integer "fory", limit: 2, null: false
    t.integer "fell", limit: 2, null: false
    t.integer "kapl",           null: false
    t.integer "ssn",  limit: 2, null: false
    t.integer "lobe"
  end

  create_table "tbobxd", primary_key: "woodyear", force: true do |t|
    t.integer "regn",  limit: 2,                 null: false
    t.integer "fadm",  limit: 2,   default: 0,   null: false
    t.integer "fory",  limit: 2,   default: 0,   null: false
    t.integer "obxd",  limit: 2,   default: 0,   null: false
    t.string  "name",  limit: nil, default: "-"
    t.string  "kvrts", limit: nil, default: "-"
  end

  create_table "tborderakt", primary_key: "regn", force: true do |t|
    t.integer "fadm",             limit: 2,                                         null: false
    t.integer "aktyear",          limit: 2,                                         null: false
    t.integer "fory",             limit: 2,                                         null: false
    t.integer "aktnumbe",                                                           null: false
    t.date    "dateakt"
    t.integer "orderyear",        limit: 2,                                         null: false
    t.integer "ordernumbe"
    t.integer "ordernp",          limit: 2
    t.integer "figure",           limit: 2
    t.string  "use1",             limit: nil,                         default: "-"
    t.decimal "fsquare",                      precision: 7, scale: 1
    t.decimal "fbusily",                      precision: 7, scale: 1
    t.decimal "fwood",                        precision: 7, scale: 1
    t.decimal "ftexwood",                     precision: 7, scale: 1
    t.decimal "flicvidbrushwood",             precision: 7, scale: 1
    t.decimal "fbrushwood",                   precision: 7, scale: 1
    t.integer "presence"
    t.integer "nbusily"
    t.integer "nwood"
    t.integer "ntexwood",                                             default: 0
    t.integer "nlicvidbrushwood"
    t.integer "nbrushwood"
  end

  add_index "tborderakt", ["regn", "fadm", "orderyear", "ordernumbe", "ordernp"], name: "uk_tborder", unique: true, using: :btree

  create_table "tbordertree", primary_key: "regn", force: true do |t|
    t.integer "fadm",                limit: 2,                         null: false
    t.integer "orderyear",           limit: 2,                         null: false
    t.integer "ordernumbe",                                            null: false
    t.integer "ordernp",             limit: 2,                         null: false
    t.integer "fory",                limit: 2
    t.integer "fell",                limit: 2
    t.integer "kvrt"
    t.decimal "woodland1",                     precision: 7, scale: 1
    t.decimal "square",                        precision: 7, scale: 1
    t.integer "grfore",              limit: 2
    t.integer "economy",             limit: 2
    t.integer "qtydelo"
    t.integer "qtywood"
    t.integer "busily"
    t.integer "wood"
    t.integer "licvidbrushwood"
    t.integer "brushwood"
    t.integer "taxgrade",            limit: 2
    t.decimal "taxbusily",                     precision: 7, scale: 1
    t.decimal "taxwood",                       precision: 7, scale: 1
    t.decimal "taxlicvidbrushwood",            precision: 7, scale: 1
    t.decimal "taxlicvidbrushwood1",           precision: 7, scale: 1
    t.date    "orderdate"
    t.date    "orderfin"
    t.date    "orderout"
    t.integer "figure",              limit: 2
  end

  create_table "tbprice", primary_key: "woodyear", force: true do |t|
    t.integer "regn",  limit: 2,                         null: false
    t.integer "fadm",  limit: 2,                         null: false
    t.integer "kapl",                                    null: false
    t.integer "ssn",   limit: 2,                         null: false
    t.decimal "price",           precision: 8, scale: 2
  end

  create_table "tbregs", primary_key: "woodyear", force: true do |t|
    t.integer "regn",             limit: 2,                           default: 0,     null: false
    t.integer "fadm",             limit: 2,                           default: 0,     null: false
    t.string  "namefadm",         limit: nil,                         default: "-"
    t.integer "numbreed",         limit: 2,                           default: 0
    t.integer "radm",             limit: 2,                           default: 0
    t.string  "nameradm",         limit: nil,                         default: "-"
    t.string  "fiodir",           limit: nil,                         default: "-"
    t.string  "fiofory",          limit: nil,                         default: "-"
    t.string  "fioeng",           limit: nil,                         default: "-"
    t.integer "version",          limit: 2,                           default: 0
    t.integer "factyear",         limit: 2,                           default: 0
    t.integer "factmnth",         limit: 2,                           default: 0
    t.string  "dirin",            limit: nil,                         default: "-"
    t.string  "dirout",           limit: nil,                         default: "-"
    t.string  "dirdata",          limit: nil,                         default: "-"
    t.integer "ry",               limit: 2,                           default: 0
    t.boolean "delta_was",                                            default: false
    t.string  "fioradm",          limit: nil,                         default: "-"
    t.integer "numbeforedefault", limit: 2
    t.integer "checkiv_0",        limit: 2,                           default: 1
    t.boolean "checkiv",                                              default: false
    t.boolean "chkwaste",                                             default: true
    t.boolean "chktaxwaste",                                          default: false
    t.boolean "chktaxwastebig",                                       default: false
    t.integer "checkv",           limit: 2,                           default: 1
    t.boolean "flgprintzak",                                          default: false
    t.integer "txttax70",         limit: 2,                           default: 0
    t.boolean "chkinfact",                                            default: false
    t.decimal "koeftax",                      precision: 7, scale: 1
    t.boolean "notreepatt",                                           default: false
    t.boolean "tab41_40",                                             default: false
    t.boolean "chkvilka",                                             default: false
    t.integer "chkvilkan",        limit: 2,                           default: 0
    t.boolean "chkcurdatereport",                                     default: false
    t.integer "areavidcheck",                                         default: 0
    t.boolean "yesforyuser",                                          default: false
    t.boolean "kop25tex",                                             default: false
    t.boolean "chkn1",                                                default: false
    t.boolean "chkn2",                                                default: false
    t.integer "chkb1",            limit: 2,                           default: 0
    t.integer "chkint",                                               default: 0
    t.decimal "chksng",                       precision: 7, scale: 1
    t.integer "sgsdv",                                                default: 0
    t.integer "sgsmo",                                                default: 0
    t.integer "sgsan",                                                default: 0
    t.boolean "chkdw12",                                              default: false
  end

  create_table "tbtabmass", primary_key: "nbreed", force: true do |t|
    t.integer "age",    limit: 2,                           default: 0,   null: false
    t.string  "razr",   limit: nil,                         default: "-", null: false
    t.integer "dia",    limit: 2,                                         null: false
    t.decimal "big",                precision: 7, scale: 3
    t.decimal "mid",                precision: 7, scale: 3
    t.decimal "lit",                precision: 7, scale: 3
    t.decimal "k_drdl",             precision: 7, scale: 3
    t.decimal "k_oth",              precision: 7, scale: 3
    t.decimal "k_drdr",             precision: 7, scale: 3
    t.decimal "k_lkr",              precision: 7, scale: 3
    t.decimal "k_such",             precision: 7, scale: 3
    t.string  "breed",  limit: nil,                         default: "-", null: false
  end

  create_table "tbtax", primary_key: "woodyear", force: true do |t|
    t.integer "kapl",                                   null: false
    t.integer "tax",  limit: 2,                         null: false
    t.decimal "kr",             precision: 7, scale: 2
    t.decimal "sr",             precision: 7, scale: 2
    t.decimal "drib",           precision: 7, scale: 2
    t.decimal "dr",             precision: 7, scale: 2
  end

  create_table "tbtaxfell", primary_key: "woodyear", force: true do |t|
    t.integer "regn",       limit: 2,                 null: false
    t.integer "fadm",       limit: 2,                 null: false
    t.integer "fell",       limit: 2,   default: 0,   null: false
    t.string  "name",       limit: nil, default: "-"
    t.integer "bigdelo",    limit: 2,   default: 0
    t.integer "middelo",    limit: 2,   default: 0
    t.integer "litdelo",    limit: 2,   default: 0
    t.integer "wood",       limit: 2,   default: 0
    t.integer "licvidwood", limit: 2,   default: 0
    t.integer "wastewood",  limit: 2,   default: 0
  end

  create_table "tbtree", primary_key: "woodyear", force: true do |t|
    t.integer "regn",       limit: 2,                                         null: false
    t.integer "fadm",       limit: 2,                                         null: false
    t.integer "fory",       limit: 2,                                         null: false
    t.integer "fell",       limit: 2,                                         null: false
    t.integer "kvrt",                                                         null: false
    t.decimal "woodland",             precision: 6, scale: 2,                 null: false
    t.decimal "square",               precision: 7, scale: 1
    t.integer "figure",     limit: 2
    t.integer "tax",        limit: 2
    t.integer "pppz",       limit: 2
    t.integer "grfore",     limit: 2
    t.decimal "fuland",               precision: 7, scale: 1
    t.integer "economy",    limit: 2
    t.integer "orderyear",  limit: 2,                         default: 0
    t.integer "ordernumbe",                                   default: 0
    t.integer "ordernp",    limit: 2,                         default: 0
    t.boolean "check1",                                       default: false
    t.integer "foryuser",                                     default: 0
  end

  create_table "tbtreediam", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                                     null: false
    t.integer "fadm",     limit: 2,                         default: 0, null: false
    t.integer "fory",     limit: 2,                         default: 0, null: false
    t.integer "fell",     limit: 2,                         default: 0, null: false
    t.integer "kvrt",                                       default: 0, null: false
    t.decimal "woodland",           precision: 6, scale: 2,             null: false
    t.integer "kapl",                                       default: 0, null: false
    t.integer "allot",    limit: 2,                         default: 1, null: false
    t.integer "diam",     limit: 2,                         default: 0, null: false
    t.integer "delo"
    t.integer "wood",                                                   null: false
    t.integer "delowood",                                   default: 0
  end

  create_table "tbtreefact", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                                            null: false
    t.integer "fadm",     limit: 2,                                            null: false
    t.integer "fory",     limit: 2,                                            null: false
    t.integer "fell",     limit: 2,                                            null: false
    t.integer "kvrt",                                                          null: false
    t.decimal "woodland",             precision: 6,  scale: 2,                 null: false
    t.date    "datezag",                                                       null: false
    t.integer "numact",                                                        null: false
    t.decimal "square",               precision: 7,  scale: 1
    t.decimal "acth",                 precision: 7,  scale: 1
    t.decimal "actz",                 precision: 10, scale: 2
    t.decimal "actd",                 precision: 7,  scale: 1
    t.decimal "actm",                 precision: 7,  scale: 1
    t.string  "actu",     limit: nil,                          default: "-"
    t.boolean "check1",                                        default: false
  end

  create_table "tbtreefactkapl", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                          null: false
    t.integer "fadm",     limit: 2,                          null: false
    t.integer "fory",     limit: 2,                          null: false
    t.integer "fell",     limit: 2,                          null: false
    t.integer "kvrt",                                        null: false
    t.decimal "woodland",           precision: 6,  scale: 2, null: false
    t.date    "datezag",                                     null: false
    t.integer "numact",                                      null: false
    t.integer "kapl",                                        null: false
    t.integer "ssn",      limit: 2,                          null: false
    t.decimal "fm3",                precision: 12, scale: 3
  end

  create_table "tbtreeglplan", primary_key: "woodyear", force: true do |t|
    t.integer "regn",       limit: 2,                                         null: false
    t.integer "fadm",       limit: 2,                                         null: false
    t.integer "fory",       limit: 2,                                         null: false
    t.integer "fell",       limit: 2,                                         null: false
    t.integer "kviv",                                         default: 0,     null: false
    t.decimal "square",               precision: 7, scale: 1
    t.integer "sdelotree"
    t.integer "swoodtree"
    t.integer "swastetree"
    t.boolean "check1",                                       default: false
  end

  create_table "tbtreeglplankapl", primary_key: "woodyear", force: true do |t|
    t.integer "regn", limit: 2,                          null: false
    t.integer "fadm", limit: 2,                          null: false
    t.integer "fory", limit: 2,                          null: false
    t.integer "fell", limit: 2,                          null: false
    t.integer "kviv",                                    null: false
    t.integer "kapl",                                    null: false
    t.integer "ssn",  limit: 2,                          null: false
    t.decimal "pm3",            precision: 10, scale: 2
    t.decimal "prm3",           precision: 10, scale: 2
  end

  create_table "tbtreeglplankaplmn", primary_key: "woodyear", force: true do |t|
    t.integer "regn", limit: 2,                                      null: false
    t.integer "fadm", limit: 2,                                      null: false
    t.integer "fory", limit: 2,                                      null: false
    t.integer "fell", limit: 2,                                      null: false
    t.integer "kviv",                                                null: false
    t.integer "mnth",                                    default: 0, null: false
    t.integer "kapl",                                                null: false
    t.integer "ssn",  limit: 2,                                      null: false
    t.decimal "pm3",            precision: 10, scale: 2
    t.decimal "prm3",           precision: 10, scale: 2
  end

  create_table "tbtreeglplanmn", primary_key: "woodyear", force: true do |t|
    t.integer "regn",       limit: 2,                                         null: false
    t.integer "fadm",       limit: 2,                                         null: false
    t.integer "fory",       limit: 2,                                         null: false
    t.integer "fell",       limit: 2,                                         null: false
    t.integer "kviv",                                         default: 0,     null: false
    t.integer "mnth",                                         default: 0,     null: false
    t.decimal "square",               precision: 7, scale: 1
    t.integer "sdelotree"
    t.integer "swoodtree"
    t.integer "swastetree"
    t.boolean "check1",                                       default: false
  end

  create_table "tbtreekapl", primary_key: "woodyear", force: true do |t|
    t.integer "regn",         limit: 2,                                           null: false
    t.integer "fadm",         limit: 2,                                           null: false
    t.integer "fory",         limit: 2,                                           null: false
    t.integer "fell",         limit: 2,                                           null: false
    t.integer "kvrt",                                                             null: false
    t.decimal "woodland",                 precision: 6, scale: 2,                 null: false
    t.integer "kapl",                                                             null: false
    t.integer "allot",        limit: 2,                                           null: false
    t.string  "razr",         limit: nil,                         default: "-"
    t.integer "age",          limit: 2,                           default: 0
    t.integer "bigtree"
    t.integer "midtree"
    t.integer "littree"
    t.integer "woodtree"
    t.integer "licvidcron"
    t.integer "wastetree"
    t.integer "brushwood",                                        default: 0
    t.integer "brushwoodl",                                       default: 0
    t.integer "woodfire",                                         default: 0
    t.integer "wastetreebig",                                     default: 0
    t.integer "automanual",   limit: 2,                           default: 0
    t.integer "qtydelo",                                          default: 0
    t.integer "qtywood",                                          default: 0
    t.integer "diam24",       limit: 2,                           default: 4
    t.boolean "check1",                                           default: false
  end

  create_table "tbtreem3kapl", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                         null: false
    t.integer "fadm",     limit: 2,                         null: false
    t.integer "fory",     limit: 2,                         null: false
    t.integer "fell",     limit: 2,                         null: false
    t.integer "kvrt",                                       null: false
    t.decimal "woodland",           precision: 6, scale: 2, null: false
    t.integer "kapl",                                       null: false
    t.integer "allot",    limit: 2,                         null: false
    t.integer "ssn",      limit: 2,                         null: false
    t.integer "m3"
  end

  create_table "tbtreemodel", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                                      null: false
    t.integer "fadm",     limit: 2,                          default: 0, null: false
    t.integer "fory",     limit: 2,                          default: 0, null: false
    t.integer "fell",     limit: 2,                          default: 0, null: false
    t.integer "kvrt",                                        default: 0, null: false
    t.decimal "woodland",           precision: 6,  scale: 2,             null: false
    t.integer "kapl",                                        default: 0, null: false
    t.integer "allot",    limit: 2,                          default: 1, null: false
    t.decimal "diam1",              precision: 7,  scale: 1
    t.decimal "htree1",             precision: 7,  scale: 1
    t.decimal "diam2",              precision: 7,  scale: 1
    t.decimal "htree2",             precision: 7,  scale: 1
    t.decimal "diam3",              precision: 12, scale: 3
    t.decimal "htree3",             precision: 7,  scale: 1
    t.decimal "diam4",              precision: 7,  scale: 1
    t.decimal "htree4",             precision: 7,  scale: 1
    t.decimal "diam5",              precision: 7,  scale: 1
    t.decimal "htree5",             precision: 7,  scale: 1
    t.decimal "diam6",              precision: 7,  scale: 1
    t.decimal "htree6",             precision: 7,  scale: 1
    t.decimal "diam7",              precision: 7,  scale: 1
    t.decimal "htree7",             precision: 7,  scale: 1
    t.decimal "diam8",              precision: 7,  scale: 1
    t.decimal "htree8",             precision: 7,  scale: 1
    t.decimal "diam9",              precision: 7,  scale: 1
    t.decimal "htree9",             precision: 7,  scale: 1
  end

  add_index "tbtreemodel", ["woodyear", "regn", "fadm", "fory", "fell", "kvrt", "woodland", "kapl", "allot"], name: "tbtreekapltbtreemodel", unique: true, using: :btree

  create_table "tbtreeplan", primary_key: "woodyear", force: true do |t|
    t.integer "regn",       limit: 2,                                         null: false
    t.integer "fadm",       limit: 2,                                         null: false
    t.integer "fory",       limit: 2,                                         null: false
    t.integer "fell",       limit: 2,                                         null: false
    t.integer "kvrt",                                                         null: false
    t.decimal "woodland",             precision: 6, scale: 2,                 null: false
    t.integer "kviv",                                         default: 0,     null: false
    t.integer "rate",       limit: 2
    t.decimal "square",               precision: 7, scale: 1
    t.integer "sdelotree"
    t.integer "swoodtree"
    t.integer "swastetree"
    t.boolean "check1",                                       default: false
  end

  create_table "tbtreeplankapl", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                          null: false
    t.integer "fadm",     limit: 2,                          null: false
    t.integer "fory",     limit: 2,                          null: false
    t.integer "fell",     limit: 2,                          null: false
    t.integer "kvrt",                                        null: false
    t.decimal "woodland",           precision: 6,  scale: 2, null: false
    t.integer "kviv",                                        null: false
    t.integer "kapl",                                        null: false
    t.integer "ssn",      limit: 2,                          null: false
    t.decimal "m3",                 precision: 12, scale: 3
  end

  create_table "tbtreeplankaplmn", primary_key: "woodyear", force: true do |t|
    t.integer "regn",     limit: 2,                                      null: false
    t.integer "fadm",     limit: 2,                                      null: false
    t.integer "fory",     limit: 2,                                      null: false
    t.integer "fell",     limit: 2,                                      null: false
    t.integer "kvrt",                                                    null: false
    t.decimal "woodland",           precision: 6,  scale: 2,             null: false
    t.integer "kviv",                                                    null: false
    t.integer "mnth",                                        default: 0, null: false
    t.integer "kapl",                                                    null: false
    t.integer "ssn",      limit: 2,                                      null: false
    t.decimal "m3",                 precision: 12, scale: 3
  end

  add_index "tbtreeplankaplmn", ["woodyear", "regn", "fadm", "fory", "fell", "kvrt", "woodland", "kviv", "mnth"], name: "tbtreeplanmntbtreeplankaplmn", unique: true, using: :btree

  create_table "tbtreeplanmn", primary_key: "woodyear", force: true do |t|
    t.integer "regn",       limit: 2,                                         null: false
    t.integer "fadm",       limit: 2,                                         null: false
    t.integer "fory",       limit: 2,                                         null: false
    t.integer "fell",       limit: 2,                                         null: false
    t.integer "kvrt",                                                         null: false
    t.decimal "woodland",             precision: 6, scale: 2,                 null: false
    t.integer "kviv",                                         default: 0,     null: false
    t.integer "mnth",                                         default: 0,     null: false
    t.integer "rate",       limit: 2
    t.decimal "square",               precision: 7, scale: 1
    t.integer "sdelotree"
    t.integer "swoodtree"
    t.integer "swastetree"
    t.boolean "check1",                                       default: false
  end

  create_table "tbtreeunder", primary_key: "woodyear", force: true do |t|
    t.integer "regn",         limit: 2,                         null: false
    t.integer "fadm",         limit: 2,                         null: false
    t.integer "fory",         limit: 2,                         null: false
    t.integer "fell",         limit: 2,                         null: false
    t.integer "kvrt",                                           null: false
    t.decimal "woodland",               precision: 6, scale: 2, null: false
    t.integer "kapl",                                           null: false
    t.integer "allot",        limit: 2,                         null: false
    t.decimal "squartestm",             precision: 7, scale: 2
    t.decimal "squar1m",                precision: 7, scale: 2
    t.decimal "waste2ck",               precision: 7, scale: 2
    t.decimal "waste4ck",               precision: 7, scale: 2
    t.decimal "waste6ck",               precision: 7, scale: 2
    t.decimal "licvidcronck",           precision: 7, scale: 2
    t.decimal "woodtreeck",             precision: 7, scale: 2
    t.decimal "bigtreeck",              precision: 7, scale: 2
    t.decimal "midtreeck",              precision: 7, scale: 2
    t.decimal "littreeck",              precision: 7, scale: 2
    t.integer "v2m"
    t.integer "germ"
    t.integer "td7m"
    t.integer "woodm"
    t.integer "brw"
    t.integer "brwl"
    t.integer "wastetreem"
  end

  add_index "tbtreeunder", ["woodyear", "regn", "fadm", "fory", "fell", "kvrt", "woodland", "kapl", "allot"], name: "tbtreekapltbtreeunder", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
