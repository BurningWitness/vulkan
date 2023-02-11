{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkHdrMetadataEXT}
  alignment _ = #{alignment struct VkHdrMetadataEXT}

  peek ptr = 
    VkHdrMetadataEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"displayPrimaryRed" ptr)
       <*> peek (offset @"displayPrimaryGreen" ptr)
       <*> peek (offset @"displayPrimaryBlue" ptr)
       <*> peek (offset @"whitePoint" ptr)
       <*> peek (offset @"maxLuminance" ptr)
       <*> peek (offset @"minLuminance" ptr)
       <*> peek (offset @"maxContentLightLevel" ptr)
       <*> peek (offset @"maxFrameAverageLightLevel" ptr)

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
  rawOffset = #{offset struct VkHdrMetadataEXT, sType}

instance Offset "pNext" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, pNext}

instance Offset "displayPrimaryRed" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, displayPrimaryRed}

instance Offset "displayPrimaryGreen" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, displayPrimaryGreen}

instance Offset "displayPrimaryBlue" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, displayPrimaryBlue}

instance Offset "whitePoint" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, whitePoint}

instance Offset "maxLuminance" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, maxLuminance}

instance Offset "minLuminance" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, minLuminance}

instance Offset "maxContentLightLevel" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, maxContentLightLevel}

instance Offset "maxFrameAverageLightLevel" VkHdrMetadataEXT where
  rawOffset = #{offset struct VkHdrMetadataEXT, maxFrameAverageLightLevel}

#else

module Vulkan.Types.Struct.VkHdrMetadataEXT where

#endif