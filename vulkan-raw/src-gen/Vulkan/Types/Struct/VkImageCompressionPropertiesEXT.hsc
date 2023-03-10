{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Types.Struct.VkImageCompressionPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageCompressionFixedRateFlagsEXT
import Vulkan.Types.Enum.VkImageCompressionFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageCompressionPropertiesEXT" #-} VkImageCompressionPropertiesEXT =
       VkImageCompressionPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageCompressionFlags :: VkImageCompressionFlagsEXT
         , imageCompressionFixedRateFlags :: VkImageCompressionFixedRateFlagsEXT
         }

instance Storable VkImageCompressionPropertiesEXT where
  sizeOf    _ = #{size      VkImageCompressionPropertiesEXT}
  alignment _ = #{alignment VkImageCompressionPropertiesEXT}

  peek ptr = 
    VkImageCompressionPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageCompressionFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageCompressionFixedRateFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageCompressionFlags" ptr val
    pokeField @"imageCompressionFixedRateFlags" ptr val

instance Offset "sType" VkImageCompressionPropertiesEXT where
  rawOffset = #{offset VkImageCompressionPropertiesEXT, sType}

instance Offset "pNext" VkImageCompressionPropertiesEXT where
  rawOffset = #{offset VkImageCompressionPropertiesEXT, pNext}

instance Offset "imageCompressionFlags" VkImageCompressionPropertiesEXT where
  rawOffset = #{offset VkImageCompressionPropertiesEXT, imageCompressionFlags}

instance Offset "imageCompressionFixedRateFlags" VkImageCompressionPropertiesEXT where
  rawOffset = #{offset VkImageCompressionPropertiesEXT, imageCompressionFixedRateFlags}

#else

module Vulkan.Types.Struct.VkImageCompressionPropertiesEXT where

#endif