class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,
    :styles => { :medium => "300x300#", :thumb => "100x100#" },
    :default_url => ActionController::Base.helpers.asset_path("avatar.png")

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_and_belongs_to_many :member_types
  has_and_belongs_to_many :interest_areas
  has_and_belongs_to_many :engagement_interests
  belongs_to :company_category

  def self.states
    {
      AL: "Alabama",
      AK: "Alaska",
      AS: "American Samoa",
      AZ: "Arizona",
      AR: "Arkansas",
      CA: "California",
      CO: "Colorado",
      CT: "Connecticut",
      DE: "Delaware",
      DC: "District Of Columbia",
      FM: "Federated States Of Micronesia",
      FL: "Florida",
      GA: "Georgia",
      GU: "Guam",
      HI: "Hawaii",
      ID: "Idaho",
      IL: "Illinois",
      IN: "Indiana",
      IA: "Iowa",
      KS: "Kansas",
      KY: "Kentucky",
      LA: "Louisiana",
      ME: "Maine",
      MH: "Marshall Islands",
      MD: "Maryland",
      MA: "Massachusetts",
      MI: "Michigan",
      MN: "Minnesota",
      MS: "Mississippi",
      MO: "Missouri",
      MT: "Montana",
      NE: "Nebraska",
      NV: "Nevada",
      NH: "New Hampshire",
      NJ: "New Jersey",
      NM: "New Mexico",
      NY: "New York",
      NC: "North Carolina",
      ND: "North Dakota",
      MP: "Northern Mariana Islands",
      OH: "Ohio",
      OK: "Oklahoma",
      OR: "Oregon",
      PW: "Palau",
      PA: "Pennsylvania",
      PR: "Puerto Rico",
      RI: "Rhode Island",
      SC: "South Carolina",
      SD: "South Dakota",
      TN: "Tennessee",
      TX: "Texas",
      UT: "Utah",
      VT: "Vermont",
      VI: "Virgin Islands",
      VA: "Virginia",
      WA: "Washington",
      WV: "West Virginia",
      WI: "Wisconsin",
      WY: "Wyoming"
    }.map do |k,v|
      [v,k]
    end
  end

end
