# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'admin@bus.org', password: 'azer', password_confirmation: 'azer', admin: true)

Niveau.create([
                {nom: 'PS'},
                {nom: 'MS'},
                {nom: 'GS'},
                {nom: 'CP'},
                {nom: 'CE1'},
                {nom: 'CE2'},
                {nom: 'CM1'},
                {nom: 'CM2'}])

Ecole.create([
              {nom: 'Ecole de BELHOMERT'},
              {nom: 'Ecole de ST MAURICE et ST GERMAIN'},
              {nom: 'Ecole de CHAMPROND'},
              {nom: 'Ecole de MONTLANDON'},
              {nom: 'Ecole de ST ELIPH'},
              {nom: 'Ecole de VAUPILLON'}])
