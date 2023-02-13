{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoSessionParametersUpdateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkVideoSessionParametersUpdateInfoKHR" #-} VkVideoSessionParametersUpdateInfoKHR =
       VkVideoSessionParametersUpdateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , updateSequenceCount :: #{type uint32_t}
         }

instance Storable VkVideoSessionParametersUpdateInfoKHR where
  sizeOf    _ = #{size      VkVideoSessionParametersUpdateInfoKHR}
  alignment _ = #{alignment VkVideoSessionParametersUpdateInfoKHR}

  peek ptr = 
    VkVideoSessionParametersUpdateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"updateSequenceCount" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"updateSequenceCount" ptr val

instance Offset "sType" VkVideoSessionParametersUpdateInfoKHR where
  rawOffset = #{offset VkVideoSessionParametersUpdateInfoKHR, sType}

instance Offset "pNext" VkVideoSessionParametersUpdateInfoKHR where
  rawOffset = #{offset VkVideoSessionParametersUpdateInfoKHR, pNext}

instance Offset "updateSequenceCount" VkVideoSessionParametersUpdateInfoKHR where
  rawOffset = #{offset VkVideoSessionParametersUpdateInfoKHR, updateSequenceCount}

#else

module Vulkan.Types.Struct.VkVideoSessionParametersUpdateInfoKHR where

#endif