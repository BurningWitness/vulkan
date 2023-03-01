{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkDescriptorSetLayoutHostMappingInfoVALVE}
  alignment _ = #{alignment VkDescriptorSetLayoutHostMappingInfoVALVE}

  peek ptr = 
    VkDescriptorSetLayoutHostMappingInfoVALVE
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorOffset" ptr val
    pokeField @"descriptorSize" ptr val

instance Offset "sType" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset VkDescriptorSetLayoutHostMappingInfoVALVE, sType}

instance Offset "pNext" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset VkDescriptorSetLayoutHostMappingInfoVALVE, pNext}

instance Offset "descriptorOffset" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset VkDescriptorSetLayoutHostMappingInfoVALVE, descriptorOffset}

instance Offset "descriptorSize" VkDescriptorSetLayoutHostMappingInfoVALVE where
  rawOffset = #{offset VkDescriptorSetLayoutHostMappingInfoVALVE, descriptorSize}

#else

module Vulkan.Types.Struct.VkDescriptorSetLayoutHostMappingInfoVALVE where

#endif