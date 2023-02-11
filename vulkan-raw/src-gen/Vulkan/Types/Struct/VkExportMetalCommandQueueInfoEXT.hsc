{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalCommandQueueInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalCommandQueueInfoEXT" #-} VkExportMetalCommandQueueInfoEXT =
       VkExportMetalCommandQueueInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , queue :: VkQueue
         , mtlCommandQueue :: MTLCommandQueue_id
         }

instance Storable VkExportMetalCommandQueueInfoEXT where
  sizeOf    _ = #{size      struct VkExportMetalCommandQueueInfoEXT}
  alignment _ = #{alignment struct VkExportMetalCommandQueueInfoEXT}

  peek ptr = 
    VkExportMetalCommandQueueInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"queue" ptr)
       <*> peek (offset @"mtlCommandQueue" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"queue" ptr val
    pokeField @"mtlCommandQueue" ptr val

instance Offset "sType" VkExportMetalCommandQueueInfoEXT where
  rawOffset = #{offset struct VkExportMetalCommandQueueInfoEXT, sType}

instance Offset "pNext" VkExportMetalCommandQueueInfoEXT where
  rawOffset = #{offset struct VkExportMetalCommandQueueInfoEXT, pNext}

instance Offset "queue" VkExportMetalCommandQueueInfoEXT where
  rawOffset = #{offset struct VkExportMetalCommandQueueInfoEXT, queue}

instance Offset "mtlCommandQueue" VkExportMetalCommandQueueInfoEXT where
  rawOffset = #{offset struct VkExportMetalCommandQueueInfoEXT, mtlCommandQueue}

#else

module Vulkan.Types.Struct.VkExportMetalCommandQueueInfoEXT where

#endif