{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_image_view_handle

module Vulkan.Types.Struct.VkImageViewAddressPropertiesNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewAddressPropertiesNVX" #-} VkImageViewAddressPropertiesNVX =
       VkImageViewAddressPropertiesNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , deviceAddress :: VkDeviceAddress
         , size :: VkDeviceSize
         }

instance Storable VkImageViewAddressPropertiesNVX where
  sizeOf    _ = #{size      VkImageViewAddressPropertiesNVX}
  alignment _ = #{alignment VkImageViewAddressPropertiesNVX}

  peek ptr = 
    VkImageViewAddressPropertiesNVX
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"deviceAddress" ptr val
    pokeField @"size" ptr val

instance Offset "sType" VkImageViewAddressPropertiesNVX where
  rawOffset = #{offset VkImageViewAddressPropertiesNVX, sType}

instance Offset "pNext" VkImageViewAddressPropertiesNVX where
  rawOffset = #{offset VkImageViewAddressPropertiesNVX, pNext}

instance Offset "deviceAddress" VkImageViewAddressPropertiesNVX where
  rawOffset = #{offset VkImageViewAddressPropertiesNVX, deviceAddress}

instance Offset "size" VkImageViewAddressPropertiesNVX where
  rawOffset = #{offset VkImageViewAddressPropertiesNVX, size}

#else

module Vulkan.Types.Struct.VkImageViewAddressPropertiesNVX where

#endif