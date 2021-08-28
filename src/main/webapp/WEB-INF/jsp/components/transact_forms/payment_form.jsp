<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

            <!-- Card: Payment Card -->
            <div class="card payment-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Payment Form -->
                    <form action="/transact/payment" method="POST">

<!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Account Holder / Beneficiary</label>
                        <input type="text" name="beneficiary" class="form-control" placeholder="Enter Account holder / Beneficiary name">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Beneficiary Account Number</label>
                        <input type="text" name="account_number"class="form-control" placeholder="Enter Beneficiary Account No">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group">
                        <label for="">Select Account</label>
                        <!-- Select Account Option -->
                        <select name="account_id" class="form-control" id="">
                            <option value="">-- Select Account --</option>
                            <c:if test="${userAccounts != null}">
                                <c:forEach items="${userAccounts}" var="selectAccount">
                                    <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                                </c:forEach>
                            </c:if>
                        </select>
                        <!-- End Select Account Option -->
                    </div>
                    <!-- End Of Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Reference</label>
                        <input type="text" name="reference" class="form-control" placeholder="Enter Reference">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <label for=""> Enter Payment Amount</label>
                        <input type="text" name="payment_amount"class="form-control" placeholder="Enter Payment Amount">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-2">
                        <button id="" class="btn btn-md transact-btn">Pay</button>
                    </div>
                    <!-- End Of Form Group -->

                    </form>
                    <!-- End Of Payment Form -->
                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Payment Card -->