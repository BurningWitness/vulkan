{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorSetLayoutBinding where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkShaderStageFlags
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutBinding" #-} VkDescriptorSetLayoutBinding =
       VkDescriptorSetLayoutBinding
         { binding :: #{type uint32_t} -- ^ Binding number for this entry
         , descriptorType :: VkDescriptorType -- ^ Type of the descriptors in this binding
         , descriptorCount :: #{type uint32_t} -- ^ Number of descriptors in this binding
         , stageFlags :: VkShaderStageFlags -- ^ Shader stages this binding is visible to
         , pImmutableSamplers :: Ptr VkSampler -- ^ Immutable samplers (used if descriptor type is SAMPLER or COMBINED_IMAGE_SAMPLER, is either NULL or contains count number of elements)
         }

instance Storable VkDescriptorSetLayoutBinding where
  sizeOf    _ = #{size      VkDescriptorSetLayoutBinding}
  alignment _ = #{alignment VkDescriptorSetLayoutBinding}

  peek ptr = 
    VkDescriptorSetLayoutBinding
       <$> peek (Foreign.Storable.Offset.offset @"binding" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"descriptorCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stageFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pImmutableSamplers" ptr)

  poke ptr val = do
    pokeField @"binding" ptr val
    pokeField @"descriptorType" ptr val
    pokeField @"descriptorCount" ptr val
    pokeField @"stageFlags" ptr val
    pokeField @"pImmutableSamplers" ptr val

instance Offset "binding" VkDescriptorSetLayoutBinding where
  rawOffset = #{offset VkDescriptorSetLayoutBinding, binding}

instance Offset "descriptorType" VkDescriptorSetLayoutBinding where
  rawOffset = #{offset VkDescriptorSetLayoutBinding, descriptorType}

instance Offset "descriptorCount" VkDescriptorSetLayoutBinding where
  rawOffset = #{offset VkDescriptorSetLayoutBinding, descriptorCount}

instance Offset "stageFlags" VkDescriptorSetLayoutBinding where
  rawOffset = #{offset VkDescriptorSetLayoutBinding, stageFlags}

instance Offset "pImmutableSamplers" VkDescriptorSetLayoutBinding where
  rawOffset = #{offset VkDescriptorSetLayoutBinding, pImmutableSamplers}