
<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>

<div class="jumbotron jumbotron-sm" >
    <div class="container" style="padding-top: 160px">
        <div class="row" >
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container" style="background: #fff;">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm" style="background: #fff;padding: 0px;border: 0px;">
                <form style="background: #fff;" style="background: #fff;padding: 0px;border: 2px solid;">
                <div class="row" >
                    <div class="col-md-6">
                        <div class="form-group" >
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                               <!--  <div class="input-group-addon" style="border: 0px;background: #fff;"><span class="glyphicon glyphicon-envelope"style="background-color: #fff;"></span>
                                </div> -->
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Primes & Zooms, Inc.</strong><br>
                0430 Andheri, Mumbai<br>
                Maharashtra, India<br>
                <abbr title="Phone">
                    P:</abbr>
                (022) 2464 1300
            </address>
            <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">first.last@example.com</a>
            </address>
            </form>
        </div>
    </div>
</div>


<%@include file="footer.jsp" %>