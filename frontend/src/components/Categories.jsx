import React, { useEffect, useState } from 'react'
import "../css/Categories.css"
import { MdAdd } from "react-icons/md";
import axios from 'axios';
import { useParams, useSearchParams } from 'react-router-dom';
import { useAuth } from '../pages/AuthContext';


const Categories = ({item}) => {

  const [products, setProducts] = useState([])
  const { token } = useAuth();


  useEffect(() => {
    // console.log(item)
    const fetchProducts = async () => {
      try {
        // Use the dynamically changing category in the API endpoint
        const response = await axios.get(`http://localhost:3000/products/${item}`);
        // console.log('ff', response.data.items[0])
        setProducts(response.data.items[0]);
        console.log(response.data.items, item)
      } catch (error) {
        console.error('Error fetching products:', error);
      }
    };

    fetchProducts();
  }, [item]);


  // const addtocart = (p_id) =>{
  //     axios.post("http://localhost:3000/add-to-cart", 
  //     {headers: {
  //       'Authorization': `${token}`,
  //       'productID' : `${p_id}`
  //     }}).then((res)=>{
  //       console.log('kch hao')
  //     })
  //     .catch(err=> console.log(err))
  //     console.log(p_id)
  // }


  const addtocart = async (productID) => {
    try {
      const response = await axios.post('http://localhost:3000/add-to-cart',
      {productID}, {
        headers: {
          'Authorization': `${token}` 
       
        },
      });
  
      console.log('Product added successfully:', response.data.message);
    } catch (error) {
      
      console.error('Error adding product:', error.response ? error.response.data : error.message);
      alert('Please Login first')
    }
  };
  


  return (
    <div className='categoriesView'>
      <h3>{item}</h3>
      
        <div className='categories'>
          {products.map((myitem)=>(
            <div className="categories-product column" key={myitem.ProductID}>
            <div className="discount">{myitem.Category}</div>

              <img src={`/images/${myitem.Images}`} alt={myitem.Title} />

  
            <div className='details-container'>
              <h4>{myitem.Title}</h4>
              <div className="height-p">
                <p>{myitem.ProductDescription}</p>
              </div>
  
              <div className="price-container">
                <h5 className='discounted-price'>Rs. {Math.round(myitem.Price)}</h5>
  
                <button className="product-add" onClick={()=> addtocart(myitem.ProductID)}>
                  <MdAdd size={25} />
                </button>
  
              </div>
  
            </div>
          </div>
          ))}
          
        </div>


      <br />
      <br />
      <br />
      

    </div>


  )
}

export default Categories



