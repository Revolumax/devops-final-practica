from app import app

def test_home():
    response = app.test_client().get("/")
    assert response.status_code == 200
    assert b"Hola Mundo" in response.data
