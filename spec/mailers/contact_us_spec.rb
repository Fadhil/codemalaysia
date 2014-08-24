require "rails_helper"

RSpec.describe ContactUs, :type => :mailer do
  describe "send_teacher_information" do
    let(:mail) { ContactUs.send_teacher_information({from_email: 'user@example.com'}) }

    it "renders the headers" do
      expect(mail.subject).to eq("Send teacher information")
      expect(mail.from).to eq(["user@example.com"])
      expect(mail.to).to eq(["contact@codemalaysia.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "send_project_owner_information" do
    let(:mail) { ContactUs.send_project_owner_information({from_email: 'user@example.com'})  }

    it "renders the headers" do
      expect(mail.subject).to eq("Send project owner information")
      expect(mail.from).to eq(["user@example.com"])
      expect(mail.to).to eq(["contact@codemalaysia.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end

  end

end
