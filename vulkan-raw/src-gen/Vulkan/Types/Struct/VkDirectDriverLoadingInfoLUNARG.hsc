{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_LUNARG_direct_driver_loading

module Vulkan.Types.Struct.VkDirectDriverLoadingInfoLUNARG where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDirectDriverLoadingFlagsLUNARG
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer.PFN_vkGetInstanceProcAddrLUNARG



data {-# CTYPE "vulkan/vulkan.h" "VkDirectDriverLoadingInfoLUNARG" #-} VkDirectDriverLoadingInfoLUNARG =
       VkDirectDriverLoadingInfoLUNARG
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDirectDriverLoadingFlagsLUNARG
         , pfnGetInstanceProcAddr :: FunPtr PFN_vkGetInstanceProcAddrLUNARG
         }

instance Storable VkDirectDriverLoadingInfoLUNARG where
  sizeOf    _ = #{size      VkDirectDriverLoadingInfoLUNARG}
  alignment _ = #{alignment VkDirectDriverLoadingInfoLUNARG}

  peek ptr = 
    VkDirectDriverLoadingInfoLUNARG
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnGetInstanceProcAddr" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pfnGetInstanceProcAddr" ptr val

instance Offset "sType" VkDirectDriverLoadingInfoLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingInfoLUNARG, sType}

instance Offset "pNext" VkDirectDriverLoadingInfoLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingInfoLUNARG, pNext}

instance Offset "flags" VkDirectDriverLoadingInfoLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingInfoLUNARG, flags}

instance Offset "pfnGetInstanceProcAddr" VkDirectDriverLoadingInfoLUNARG where
  rawOffset = #{offset VkDirectDriverLoadingInfoLUNARG, pfnGetInstanceProcAddr}

#else

module Vulkan.Types.Struct.VkDirectDriverLoadingInfoLUNARG where

#endif