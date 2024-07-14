<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Tour</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        td:first-child {
            text-align: right;
            font-weight: bold;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }

        .image-container {
            width: 200px; /* Đặt chiều rộng tối đa cho khung ảnh */
            height: 200px; /* Đặt chiều cao tối đa cho khung ảnh */
            overflow: hidden; /* Ẩn bất kỳ phần nào của ảnh vượt quá khung */
            margin: 10px 0;
        }

        .image-container img {
            width: 100%; /* Làm cho ảnh phù hợp với chiều rộng của phần tử chứa */
            height: auto; /* Cho phép chiều cao tự động tính toán để giữ tỷ lệ khung hình ảnh */
            display: block; /* Loại bỏ khoảng trống dưới ảnh */
        }
    </style>
</head>
<body>
    <form action="updateTourServlet" method="post">
        <table>
            <tr>
                <td>ID</td>
                <td>
                    <input value="${st.id}" type="text" name="id" readonly>
                </td>
            </tr>
            <tr>
                <td>Title</td>
                <td>
                    <input value="${st.title}" type="text" name="title">
                </td>
            </tr>
            <tr>
                <td>Tour Code</td>
                <td>
                    <input value="${st.tourCode}" type="text" name="tourCode">
                </td>
            </tr>
            <tr>
                <td>Departure Place</td>
                <td>
                    <input value="${st.departurePlace}" type="text" name="departurePlace">
                </td>
            </tr>
            <tr>
                <td>Travel Time</td>
                <td>
                    <input value="${st.travelTime}" type="text" name="travelTime">
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input value="${st.duration}" type="text" name="duration">
                </td>
            </tr>
            <tr>
                <td>Duration</td>
                <td>
                    <input value="${st.price}" type="text" name="price">
                </td>
            </tr>
            <tr>
                <td>Image Path</td>
                <td>
                    <div class="image-container">
                        <img src="${st.imagePath}" alt="Tour Image" class="product-img">
                    </div>
                    <input value="${st.imagePath}" type="text" name="imagePath">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">Update</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
