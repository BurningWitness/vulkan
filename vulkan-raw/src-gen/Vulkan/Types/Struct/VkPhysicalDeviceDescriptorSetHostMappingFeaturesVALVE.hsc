{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_descriptor_set_host_mapping

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE" #-} VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE =
       VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorSetHostMapping :: VkBool32
         }

instance Storable VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE where
  sizeOf    _ = #{size      VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE}
  alignment _ = #{alignment VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE}

  peek ptr = 
    VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"descriptorSetHostMapping" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorSetHostMapping" ptr val

instance Offset "sType" VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE where
  rawOffset = #{offset VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE, sType}

instance Offset "pNext" VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE where
  rawOffset = #{offset VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE, pNext}

instance Offset "descriptorSetHostMapping" VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE where
  rawOffset = #{offset VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE, descriptorSetHostMapping}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE where

#endif