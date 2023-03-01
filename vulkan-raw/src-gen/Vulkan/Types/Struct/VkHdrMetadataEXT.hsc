{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_hdr_metadata

module Vulkan.Types.Struct.VkHdrMetadataEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkXYColorEXT



data {-# CTYPE "vulkan/vulkan.h" "VkHdrMetadataEXT" #-} VkHdrMetadataEXT =
       VkHdrMetadataEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , displayPrimaryRed :: VkXYColorEXT -- ^ Display primary's Red
         , displayPrimaryGreen :: VkXYColorEXT -- ^ Display primary's Green
         , displayPrimaryBlue :: VkXYColorEXT -- ^ Display primary's Blue
         , whitePoint :: VkXYColorEXT -- ^ Display primary's Blue
         , maxLuminance :: #{type float} -- ^ Display maximum luminance
         , minLuminance :: #{type float} -- ^ Display minimum luminance
         , maxContentLightLevel :: #{type float} -- ^ Content maximum luminance
         , maxFrameAverageLightLevel :: #{type float}
         }

instance Storable VkHdrMetadataEXT where
  sizeOf    _ = #{size      VkHdrMetadataEXT}
  alignment _ = #{alignment VkHdrMetadataEXT}

  peek ptr = 
    VkHdrMetadataEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"displayPrimaryRed" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"displayPrimaryGreen" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"displayPrimaryBlue" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"whitePoint" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxLuminance" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minLuminance" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxContentLightLevel" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxFrameAverageLightLevel" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"displayPrimaryRed" ptr val
    pokeField @"displayPrimaryGreen" ptr val
    pokeField @"displayPrimaryBlue" ptr val
    pokeField @"whitePoint" ptr val
    pokeField @"maxLuminance" ptr val
    pokeField @"minLuminance" ptr val
    pokeField @"maxContentLightLevel" ptr val
    pokeField @"maxFrameAverageLightLevel" ptr val

instance Offset "sType" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, sType}

instance Offset "pNext" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, pNext}

instance Offset "displayPrimaryRed" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, displayPrimaryRed}

instance Offset "displayPrimaryGreen" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, displayPrimaryGreen}

instance Offset "displayPrimaryBlue" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, displayPrimaryBlue}

instance Offset "whitePoint" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, whitePoint}

instance Offset "maxLuminance" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, maxLuminance}

instance Offset "minLuminance" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, minLuminance}

instance Offset "maxContentLightLevel" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, maxContentLightLevel}

instance Offset "maxFrameAverageLightLevel" VkHdrMetadataEXT where
  rawOffset = #{offset VkHdrMetadataEXT, maxFrameAverageLightLevel}

#else

module Vulkan.Types.Struct.VkHdrMetadataEXT where

#endif