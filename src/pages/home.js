import wheat from '../images/wheat.jpg'
import '../App.css';
import React from 'react';
import { Link } from 'react-router-dom';

export default function Front() {
  return (
    <html>

      <div class="container-fluid">
        <div class="row mt-3">
          <div class="col-sm">
            <img src={wheat} id="wheat"></img>
          </div>
          <div id="div_text" class="col-sm">
            <h1>WHO WE ARE</h1>
            <a id="text1"> Finnish Bear Beer is a company providing domestic craft brewery products. We offer constantly changing products for people who are just as passionate about supporting domestic companies as we are. 
            </a>
            <div class="container" id="rd">
              <Link to="/readmore"><button type="button" id="readmore" data-toggle="collapse" data-target="#textbox">READ MORE</button></Link>
            </div>
          </div>
        </div>
      </div>
    </html>
  )
}