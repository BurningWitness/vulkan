{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorPoolCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDescriptorPoolCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDescriptorPoolSize



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorPoolCreateInfo" #-} VkDescriptorPoolCreateInfo =
       VkDescriptorPoolCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDescriptorPoolCreateFlags
         , maxSets :: #{type uint32_t}
         , poolSizeCount :: #{type uint32_t}
         , pPoolSizes :: Ptr VkDescriptorPoolSize
         }

instance Storable VkDescriptorPoolCreateInfo where
  sizeOf    _ = #{size      VkDescriptorPoolCreateInfo}
  alignment _ = #{alignment VkDescriptorPoolCreateInfo}

  peek ptr = 
    VkDescriptorPoolCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"maxSets" ptr)
       <*> peek (offset @"poolSizeCount" ptr)
       <*> peek (offset @"pPoolSizes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"maxSets" ptr val
    pokeField @"poolSizeCount" ptr val
    pokeField @"pPoolSizes" ptr val

instance Offset "sType" VkDescriptorPoolCreateInfo where
  rawOffset = #{offset VkDescriptorPoolCreateInfo, sType}

instance Offset "pNext" VkDescriptorPoolCreateInfo where
  rawOffset = #{offset VkDescriptorPoolCreateInfo, pNext}

instance Offset "flags" VkDescriptorPoolCreateInfo where
  rawOffset = #{offset VkDescriptorPoolCreateInfo, flags}

instance Offset "maxSets" VkDescriptorPoolCreateInfo where
  rawOffset = #{offset VkDescriptorPoolCreateInfo, maxSets}

instance Offset "poolSizeCount" VkDescriptorPoolCreateInfo where
  rawOffset = #{offset VkDescriptorPoolCreateInfo, poolSizeCount}

instance Offset "pPoolSizes" VkDescriptorPoolCreateInfo where
  rawOffset = #{offset VkDescriptorPoolCreateInfo, pPoolSizes}