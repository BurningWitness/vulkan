{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDevicePointClippingProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPointClippingBehavior
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePointClippingProperties" #-} VkPhysicalDevicePointClippingProperties =
       VkPhysicalDevicePointClippingProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pointClippingBehavior :: VkPointClippingBehavior
         }

instance Storable VkPhysicalDevicePointClippingProperties where
  sizeOf    _ = #{size      VkPhysicalDevicePointClippingProperties}
  alignment _ = #{alignment VkPhysicalDevicePointClippingProperties}

  peek ptr = 
    VkPhysicalDevicePointClippingProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pointClippingBehavior" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pointClippingBehavior" ptr val

instance Offset "sType" VkPhysicalDevicePointClippingProperties where
  rawOffset = #{offset VkPhysicalDevicePointClippingProperties, sType}

instance Offset "pNext" VkPhysicalDevicePointClippingProperties where
  rawOffset = #{offset VkPhysicalDevicePointClippingProperties, pNext}

instance Offset "pointClippingBehavior" VkPhysicalDevicePointClippingProperties where
  rawOffset = #{offset VkPhysicalDevicePointClippingProperties, pointClippingBehavior}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePointClippingProperties where

#endif