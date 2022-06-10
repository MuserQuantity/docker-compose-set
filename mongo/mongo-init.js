db.createUser({
    user: 'muser',
    pwd: 'muserquantity',
    roles: [
        {
            role: 'readWrite',
            db: 'testdb',
        },
    ],
});