{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSubpassDependency where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkDependencyFlags
import Vulkan.Types.Enum.VkPipelineStageFlags



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDependency" #-} VkSubpassDependency =
       VkSubpassDependency
         { srcSubpass :: #{type uint32_t}
         , dstSubpass :: #{type uint32_t}
         , srcStageMask :: VkPipelineStageFlags
         , dstStageMask :: VkPipelineStageFlags
         , srcAccessMask :: VkAccessFlags -- ^ Memory accesses from the source of the dependency to synchronize
         , dstAccessMask :: VkAccessFlags -- ^ Memory accesses from the destination of the dependency to synchronize
         , dependencyFlags :: VkDependencyFlags
         }

instance Storable VkSubpassDependency where
  sizeOf    _ = #{size      struct VkSubpassDependency}
  alignment _ = #{alignment struct VkSubpassDependency}

  peek ptr = 
    VkSubpassDependency
       <$> peek (offset @"srcSubpass" ptr)
       <*> peek (offset @"dstSubpass" ptr)
       <*> peek (offset @"srcStageMask" ptr)
       <*> peek (offset @"dstStageMask" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)
       <*> peek (offset @"dependencyFlags" ptr)

  poke ptr val = do
    pokeField @"srcSubpass" ptr val
    pokeField @"dstSubpass" ptr val
    pokeField @"srcStageMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"dependencyFlags" ptr val

instance Offset "srcSubpass" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, srcSubpass}

instance Offset "dstSubpass" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, dstSubpass}

instance Offset "srcStageMask" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, srcStageMask}

instance Offset "dstStageMask" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, dstStageMask}

instance Offset "srcAccessMask" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, srcAccessMask}

instance Offset "dstAccessMask" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, dstAccessMask}

instance Offset "dependencyFlags" VkSubpassDependency where
  rawOffset = #{offset struct VkSubpassDependency, dependencyFlags}