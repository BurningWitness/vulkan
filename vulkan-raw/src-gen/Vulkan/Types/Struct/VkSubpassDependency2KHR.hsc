{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Struct.VkSubpassDependency2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkAccessFlags
import Vulkan.Types.Enum.VkDependencyFlags
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDependency2KHR" #-} VkSubpassDependency2KHR =
       VkSubpassDependency2KHR
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

instance Storable VkSubpassDependency2KHR where
  sizeOf    _ = #{size      VkSubpassDependency2KHR}
  alignment _ = #{alignment VkSubpassDependency2KHR}

  peek ptr = 
    VkSubpassDependency2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcSubpass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstSubpass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstStageMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstAccessMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dependencyFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"viewOffset" ptr)

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

instance Offset "sType" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, sType}

instance Offset "pNext" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, pNext}

instance Offset "srcSubpass" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, srcSubpass}

instance Offset "dstSubpass" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, dstSubpass}

instance Offset "srcStageMask" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, srcStageMask}

instance Offset "dstStageMask" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, dstStageMask}

instance Offset "srcAccessMask" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, srcAccessMask}

instance Offset "dstAccessMask" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, dstAccessMask}

instance Offset "dependencyFlags" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, dependencyFlags}

instance Offset "viewOffset" VkSubpassDependency2KHR where
  rawOffset = #{offset VkSubpassDependency2KHR, viewOffset}

#else

module Vulkan.Types.Struct.VkSubpassDependency2KHR where

#endif