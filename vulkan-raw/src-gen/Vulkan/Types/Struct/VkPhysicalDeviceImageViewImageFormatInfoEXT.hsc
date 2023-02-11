{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_filter_cubic

module Vulkan.Types.Struct.VkPhysicalDeviceImageViewImageFormatInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageViewType
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceImageViewImageFormatInfoEXT" #-} VkPhysicalDeviceImageViewImageFormatInfoEXT =
       VkPhysicalDeviceImageViewImageFormatInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageViewType :: VkImageViewType
         }

instance Storable VkPhysicalDeviceImageViewImageFormatInfoEXT where
  sizeOf    _ = #{size      struct VkPhysicalDeviceImageViewImageFormatInfoEXT}
  alignment _ = #{alignment struct VkPhysicalDeviceImageViewImageFormatInfoEXT}

  peek ptr = 
    VkPhysicalDeviceImageViewImageFormatInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageViewType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageViewType" ptr val

instance Offset "sType" VkPhysicalDeviceImageViewImageFormatInfoEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageViewImageFormatInfoEXT, sType}

instance Offset "pNext" VkPhysicalDeviceImageViewImageFormatInfoEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageViewImageFormatInfoEXT, pNext}

instance Offset "imageViewType" VkPhysicalDeviceImageViewImageFormatInfoEXT where
  rawOffset = #{offset struct VkPhysicalDeviceImageViewImageFormatInfoEXT, imageViewType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceImageViewImageFormatInfoEXT where

#endif