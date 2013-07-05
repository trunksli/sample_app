FactoryGirl.define do
	factory :user do
		name "leroy Jenkins"
		email "leroy@jenkins.com"
		password "foobar"
		password_confirmation "foobar"
		#puts #{'FActoryGirl user Leroy Jenkins created'}
	end
end