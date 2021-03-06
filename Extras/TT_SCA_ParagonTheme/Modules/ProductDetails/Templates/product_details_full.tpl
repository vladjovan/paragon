<div class="product-details-full">
	<div data-cms-area="item_details_banner" data-cms-area-filters="page_type"></div>
	<article class="product-details-full-content" itemscope itemtype="https://schema.org/Product">
		<meta itemprop="url" content="{{itemUrl}}">
		<div id="banner-details-top" class="product-details-full-banner-top-details"></div>

		<section class="product-details-full-main-content">
			<div class="product-details-full-content-header">

				{{!-- <h1 class="product-details-full-content-header-title" itemprop="name">{{pageHeader}}</h1> --}}

				<div class="product-details-full-rating" data-view="Global.StarRating"></div>
				<div data-cms-area="item_info" data-cms-area-filters="path"></div>
			</div>
			<div class="product-details-full-main-content-left">
				<div class="product-details-full-image-gallery-container">
					<div id="banner-image-top" class="content-banner banner-image-top"></div>
					<div data-view="Product.ImageGallery"></div>

					{{!-- AddThis Social Sharing --}}
					<div class="product-details-share-section">
						<div data-view="SocialSharing.Flyout" class="product-details-full-social-sharing"></div>
					</div>

					<div id="banner-image-bottom" class="content-banner banner-image-bottom"></div>
				</div>
			</div>

			<div class="product-details-full-main-content-right">
				<div class="product-details-full-divider product-details-full-divider-third"></div>

				<div class="product-details-full-main">
					{{#if isItemProperlyConfigured}}
					<form id="product-details-full-form" data-action="submit-form" method="POST">
						<div data-view="Product.Sku"></div>

						<section class="product-details-full-info">
							<div id="banner-summary-bottom" class="product-details-full-banner-summary-bottom"></div>
						</section>

						<div class="product-details-full-divider product-details-full-divider-sec"></div>

						<div data-view="Product.Price" id="product-price-full-pdp"></div>
						<div data-view="Quantity.Pricing"></div>

						<div data-view="Product.Stock.Info"></div>
						<div data-view="StockDescription"></div>

						{{#if isPriceEnabled}}
						<div data-view="Quantity" id="quantity-full-pdp"></div>
						<div class="product-details-full-call" id="call-for-pricing-full-pdp" style="display:none">
							<span style="font-weight: bold;" >
								{{translate 'Call for pricing'}}
							</span>
						</div>						

						<section class="product-details-full-actions">

							<div class="product-details-full-actions-container">
								<div data-view="MainActionView" id="main-data-view-full-pdp"></div>

							</div>
							<div class="product-details-full-actions-container" id="quote-productlist-container-full-pdp">
								<div data-view="AddToProductList" class="product-details-full-actions-addtowishlist"></div>

								<div data-view="ProductDetails.AddToQuote" class="product-details-full-actions-addtoquote"></div>
							</div>

						</section>
						{{/if}}

						<div class="product-details-full-divider"></div>

						{{!-- Promo CMS section - for all PDP --}}
						<div class="pdp-promos-section" data-cms-area="item_details_promo-message" data-cms-area-filters="page_type"></div>

						<div class="product-details-full-main-bottom-banner">
							<div id="banner-summary-bottom" class="product-details-full-banner-summary-bottom"></div>
						</div>
					</form>
					{{else}}
					<div data-view="GlobalViewsMessageView.WronglyConfigureItem"></div>
					{{/if}}

					<div id="banner-details-bottom" class="product-details-full-banner-details-bottom" data-cms-area="item_info_bottom" data-cms-area-filters="page_type"></div>
				</div>
			</div>

		</section>

		<section data-view="Product.Information"></section>

		{{!-- <div class="product-details-full-divider-desktop"></div> --}}

		<div data-view="ProductReviews.Center"></div>

		<div class="product-details-full-content-related-items">
			<div data-view="Related.Items"></div>
		</div>

		<div class="product-details-full-content-correlated-items">
			<div data-view="Correlated.Items"></div>
		</div>
		<div id="banner-details-bottom" class="content-banner banner-details-bottom" data-cms-area="item_details_banner_bottom" data-cms-area-filters="page_type"></div>
	</article>
</div>





{{!----
Use the following context variables when customizing this template:

	model (Object)
	model.item (Object)
	model.item.internalid (Number)
	model.item.type (String)
	model.quantity (Number)
	model.options (Array)
	model.options.0 (Object)
	model.options.0.cartOptionId (String)
	model.options.0.itemOptionId (String)
	model.options.0.label (String)
	model.options.0.type (String)
	model.location (String)
	model.fulfillmentChoice (String)
	pageHeader (String)
	itemUrl (String)
	isItemProperlyConfigured (Boolean)
	isPriceEnabled (Boolean)

----}}
