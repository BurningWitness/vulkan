{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorSetLayoutCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDescriptorSetLayoutBinding



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorSetLayoutCreateInfo" #-} VkDescriptorSetLayoutCreateInfo =
       VkDescriptorSetLayoutCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDescriptorSetLayoutCreateFlags
         , bindingCount :: #{type uint32_t} -- ^ Number of bindings in the descriptor set layout
         , pBindings :: Ptr VkDescriptorSetLayoutBinding -- ^ Array of descriptor set layout bindings
         }

instance Storable VkDescriptorSetLayoutCreateInfo where
  sizeOf    _ = #{size      struct VkDescriptorSetLayoutCreateInfo}
  alignment _ = #{alignment struct VkDescriptorSetLayoutCreateInfo}

  peek ptr = 
    VkDescriptorSetLayoutCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"bindingCount" ptr)
       <*> peek (offset @"pBindings" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"bindingCount" ptr val
    pokeField @"pBindings" ptr val

instance Offset "sType" VkDescriptorSetLayoutCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutCreateInfo, sType}

instance Offset "pNext" VkDescriptorSetLayoutCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutCreateInfo, pNext}

instance Offset "flags" VkDescriptorSetLayoutCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutCreateInfo, flags}

instance Offset "bindingCount" VkDescriptorSetLayoutCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutCreateInfo, bindingCount}

instance Offset "pBindings" VkDescriptorSetLayoutCreateInfo where
  rawOffset = #{offset struct VkDescriptorSetLayoutCreateInfo, pBindings}