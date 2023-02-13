{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mutable_descriptor_type

module Vulkan.Types.Struct.VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT" #-} VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT =
       VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mutableDescriptorType :: VkBool32
         }

instance Storable VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mutableDescriptorType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mutableDescriptorType" ptr val

instance Offset "sType" VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT, pNext}

instance Offset "mutableDescriptorType" VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT, mutableDescriptorType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT where

#endif