{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_index_type_uint8

module Vulkan.Types.Struct.VkPhysicalDeviceIndexTypeUint8FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceIndexTypeUint8FeaturesEXT" #-} VkPhysicalDeviceIndexTypeUint8FeaturesEXT =
       VkPhysicalDeviceIndexTypeUint8FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , indexTypeUint8 :: VkBool32
         }

instance Storable VkPhysicalDeviceIndexTypeUint8FeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceIndexTypeUint8FeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceIndexTypeUint8FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceIndexTypeUint8FeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indexTypeUint8" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"indexTypeUint8" ptr val

instance Offset "sType" VkPhysicalDeviceIndexTypeUint8FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceIndexTypeUint8FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceIndexTypeUint8FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceIndexTypeUint8FeaturesEXT, pNext}

instance Offset "indexTypeUint8" VkPhysicalDeviceIndexTypeUint8FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceIndexTypeUint8FeaturesEXT, indexTypeUint8}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceIndexTypeUint8FeaturesEXT where

#endif