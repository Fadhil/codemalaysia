require "rails_helper"

RSpec.describe ContactUsMailer, :type => :mailer do
  describe "teacher_request" do
    let(:mail) { ContactUsMailer.teacher_request }

    it "renders the headers" do
      expect(mail.subject).to eq("Teacher request")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "project_owner_request" do
    let(:mail) { ContactUsMailer.project_owner_request }

    it "renders the headers" do
      expect(mail.subject).to eq("Project owner request")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
