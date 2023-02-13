{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_mutable_descriptor_type

module Vulkan.Types.Struct.VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE" #-} VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE =
       VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , mutableDescriptorType :: VkBool32
         }

instance Storable VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE where
  sizeOf    _ = #{size      VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE}
  alignment _ = #{alignment VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE}

  peek ptr = 
    VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"mutableDescriptorType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"mutableDescriptorType" ptr val

instance Offset "sType" VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE where
  rawOffset = #{offset VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE, sType}

instance Offset "pNext" VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE where
  rawOffset = #{offset VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE, pNext}

instance Offset "mutableDescriptorType" VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE where
  rawOffset = #{offset VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE, mutableDescriptorType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMutableDescriptorTypeFeaturesVALVE where

#endif