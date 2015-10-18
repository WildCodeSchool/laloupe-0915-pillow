# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{ email: 'tata@toto.com',
              password: 'jecode4laloupe',
              password_confirmation: 'jecode4laloupe',
              name: 'tata',
              gender:'',
              date_birth: '31/08/1982',
              phone: '',
              adress: '',
              zip_code: '',
              town: '',
              country:'',
              role_guest:'',
              role_host: '',
              role_both:'',
              description:'',
              langage:'',
              photos:'',
  }])
Appart.create([{ room_type: true,
                property_type: 'Appartement',
                accommodates: 4,
                city: 'Paris',
                title:'Appartement in RIO',
                bedroom_nb: 2,
                beds_nb: 2,
                price: 200.00,
                adress: 'Rue de Paris',
                zip_code: 75015,
                country: 'France',
                amenities: "PQ / Serviettes / TV / Internet",
                images:'http://www.bright-immobilier.com/wp-content/uploads/appartement-paris_8-rue-jean-mermoz_01-950x534.jpg', 

  }])

Appart.create([{ room_type: true,
                property_type: 'Appartement',
                accommodates: 4,
                city: 'Paris',
                title: 'Appartement in Paris',
                bedroom_nb: 2,
                beds_nb: 2,
                price: 200.00,
                adress: 'Rue de Paris',
                zip_code: 75015,
                country: 'France',
                amenities: "PQ / Serviettes / TV / Internet",
                images:'http://www.egr-renovation.com/images/post-images/renovation-appartement-paris-15.jpg', 

  }])
Appart.create([{ room_type: true,
                property_type: 'Appartement',
                accommodates: 4,
                city: 'Paris',
                title: 'Appartement in Paris',
                bedroom_nb: 2,
                beds_nb: 2,
                price: 200.00,
                adress: 'Rue de Paris',
                zip_code: 75015,
                country: 'France',
                amenities: "PQ / Serviettes / TV / Internet",
                images:'http://www.appartement-paris-vacances.fr/photos/9709.jpg', 

  }])
Appart.create([{ room_type: true,
                property_type: 'Appartement',
                accommodates: 4,
                city: 'Paris',
                title: 'Appartement in Paris',
                bedroom_nb: 2,
                beds_nb: 2,
                price: 200.00,
                adress: 'Rue de Paris',
                zip_code: 75015,
                country: 'France',
                amenities: "PQ / Serviettes / TV / Internet",
                images:'http://referentiel.nouvelobs.com/file/5677948.jpg', 

  }])