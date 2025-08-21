from app import app

def test_home():
    response = app.test_client().get("/")
    assert response.status_code == 200
    assert b"Hola esta es mi Practica Final de electiva OEN" in response.data
