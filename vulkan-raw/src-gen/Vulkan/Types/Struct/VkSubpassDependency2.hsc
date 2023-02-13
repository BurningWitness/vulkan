{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSubpassDependency2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkDependencyFlags
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDependency2" #-} VkSubpassDependency2 =
       VkSubpassDependency2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubpass :: #{type uint32_t}
         , dstSubpass :: #{type uint32_t}
         , srcStageMask :: VkPipelineStageFlags
         , dstStageMask :: VkPipelineStageFlags
         , srcAccessMask :: VkAccessFlags
         , dstAccessMask :: VkAccessFlags
         , dependencyFlags :: VkDependencyFlags
         , viewOffset :: #{type int32_t}
         }

instance Storable VkSubpassDependency2 where
  sizeOf    _ = #{size      VkSubpassDependency2}
  alignment _ = #{alignment VkSubpassDependency2}

  peek ptr = 
    VkSubpassDependency2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcSubpass" ptr)
       <*> peek (offset @"dstSubpass" ptr)
       <*> peek (offset @"srcStageMask" ptr)
       <*> peek (offset @"dstStageMask" ptr)
       <*> peek (offset @"srcAccessMask" ptr)
       <*> peek (offset @"dstAccessMask" ptr)
       <*> peek (offset @"dependencyFlags" ptr)
       <*> peek (offset @"viewOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubpass" ptr val
    pokeField @"dstSubpass" ptr val
    pokeField @"srcStageMask" ptr val
    pokeField @"dstStageMask" ptr val
    pokeField @"srcAccessMask" ptr val
    pokeField @"dstAccessMask" ptr val
    pokeField @"dependencyFlags" ptr val
    pokeField @"viewOffset" ptr val

instance Offset "sType" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, sType}

instance Offset "pNext" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, pNext}

instance Offset "srcSubpass" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, srcSubpass}

instance Offset "dstSubpass" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, dstSubpass}

instance Offset "srcStageMask" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, srcStageMask}

instance Offset "dstStageMask" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, dstStageMask}

instance Offset "srcAccessMask" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, srcAccessMask}

instance Offset "dstAccessMask" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, dstAccessMask}

instance Offset "dependencyFlags" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, dependencyFlags}

instance Offset "viewOffset" VkSubpassDependency2 where
  rawOffset = #{offset VkSubpassDependency2, viewOffset}

#else

module Vulkan.Types.Struct.VkSubpassDependency2 where

#endif