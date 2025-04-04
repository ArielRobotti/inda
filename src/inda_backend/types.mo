module {
    public type DataUser = {
        principalId: Principal;
        name: Text;
        lastName: ?Text;
        email: ?Text;
        phone: ?Nat;
        kyc: Bool;
        country: ?Text;
        wallet: ?Principal
        // agregar campos comunes a todos lo tipos de usuario
    };

    public type UserCreator = DataUser and {
        publications: Publication;
        webSite: Text;
    };

    public type UserBrand = DataUser and {
        brandName: Text;
        industry: Industry;
        availableCountries: [Text];
        webSite: Text;
        socialMedia: [Text]
    };

    public type Content = {
        #Html: Text;
        #MD: Text;
        #Photo: {photo: Blob; despription: Text};
        #Multimedia: {file: Blob; description: Text}
    };

    public type Publication = {
        date: Int;
        author: {principal: Principal; name: Text};
        title: Text;
        content: Content;
    };

    public type Industry = {
        #fashion;
        #dress;
        #sportswear;
        // Agregar mas variantes de rubros
        #other: Text
    }
}