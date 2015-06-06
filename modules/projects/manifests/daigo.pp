class projects::daigo {
  include common::haskell
  include postgresql
  postgresql::db { 'daigo': }
  postgresql::db { 'daigo_test': }
}
  
