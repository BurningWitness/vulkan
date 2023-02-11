{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_descriptor_set_host_mapping

module Vulkan.Types.Struct.VkDescriptorSetLayoutHostMappingInfoVALVE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutHostMappingInfoVALVE" #-} VkDescriptorSetLayoutHostMappingInfoVALVE =
       VkDescriptorSetLayoutHostMappingInfoVALVE
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorOffset :: #{type size_t}
         , descriptorSize :: #{type uint32_t}
         }

instance Storable VkDescriptorSetLayoutHostMappingInfoVALVE where
  sizeOf    _ = #{size      struct VkDescriptorSetLayoutHostMappingInfoVALVE}
  alignment _ = #{alignment struct VkDescriptorSetLayoutHostMappingInfoVALVE}

  peek ptr = 
    VkDescriptorSetLayoutHostMappingInfoVALVE
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"descriptorOffset" ptr)
       <*> peek (offset @"descriptorSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorOffset" ptr val
    pokeField @"descriptorSize" ptr val

instance Offset "sType" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset struct VkDescriptorSetLayoutHostMappingInfoVALVE, sType}

instance Offset "pNext" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset struct VkDescriptorSetLayoutHostMappingInfoVALVE, pNext}

instance Offset "descriptorOffset" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset struct VkDescriptorSetLayoutHostMappingInfoVALVE, descriptorOffset}

instance Offset "descriptorSize" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset struct VkDescriptorSetLayoutHostMappingInfoVALVE, descriptorSize}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutHostMappingInfoVALVE where

#endif