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

module Vulkan.Types.Struct.VkDescriptorSetBindingReferenceVALVE where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetBindingReferenceVALVE" #-} VkDescriptorSetBindingReferenceVALVE =
       VkDescriptorSetBindingReferenceVALVE
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , descriptorSetLayout :: VkDescriptorSetLayout
         , binding :: #{type uint32_t}
         }

instance Storable VkDescriptorSetBindingReferenceVALVE where
  sizeOf    _ = #{size      VkDescriptorSetBindingReferenceVALVE}
  alignment _ = #{alignment VkDescriptorSetBindingReferenceVALVE}

  peek ptr = 
    VkDescriptorSetBindingReferenceVALVE
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorSetLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"binding" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"descriptorSetLayout" ptr val
    pokeField @"binding" ptr val

instance Offset "sType" VkDescriptorSetBindingReferenceVALVE where
  rawOffset = #{offset VkDescriptorSetBindingReferenceVALVE, sType}

instance Offset "pNext" VkDescriptorSetBindingReferenceVALVE where
  rawOffset = #{offset VkDescriptorSetBindingReferenceVALVE, pNext}

instance Offset "descriptorSetLayout" VkDescriptorSetBindingReferenceVALVE where
  rawOffset = #{offset VkDescriptorSetBindingReferenceVALVE, descriptorSetLayout}

instance Offset "binding" VkDescriptorSetBindingReferenceVALVE where
  rawOffset = #{offset VkDescriptorSetBindingReferenceVALVE, binding}

#else

module Vulkan.Types.Struct.VkDescriptorSetBindingReferenceVALVE where

#endif